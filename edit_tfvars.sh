#!/bin/bash
valid_regions=("amea" "amer" "meu")

region="amer"  # Default region

while getopts ":p:r:a:w:" opt; do
    case $opt in
        p)
            project_name="$OPTARG"
            ;;
        r)
            region="$OPTARG"
            ;;
        a)
            app_dev_ad_group="$OPTARG"
            ;;
        w)
            pwr_dev_ad_group="$OPTARG"
            ;;
        \?)
            echo "Invalid option: -$OPTARG" >&2
            exit 1
            ;;
        :)
            echo "Option -$OPTARG requires an argument." >&2
            exit 1
            ;;
    esac
done

# Shift away processed options
shift "$(($OPTIND - 1))"

# Check if all required options are present
if [[ -z "$project_name" || -z "$region" || -z "$app_dev_ad_group" || -z "$pwr_dev_ad_group" ]]; then
    echo "All options (-p, -r, -a, -w) are required." >&2
    exit 1
fi

# Validate region
if [[ ! " ${valid_regions[*]} " =~ " $region " ]]; then
    echo "Invalid region: $region. Valid regions are: ${valid_regions[*]}" >&2
    exit 1
fi

# Output the selections
echo "You selected:"
echo "Project Name: $project_name"
echo "App Dev AD Group: $app_dev_ad_group"
echo "Power Dev AD Group: $pwr_dev_ad_group"
echo "Region: $region"

cp project.tfvars new.tfvars

sed -i "s/{{var.prjName}}/$project_name/g" "$project_name.tfvars"
sed -i "s/\"{{var.${region}Envs}}\"/\"dev\",\"qa\",\"prd\"/g" "$project_name.tfvars"
sed -i "s/{{var.${region}AppDevGrp}}/$app_dev_ad_group/g" "$project_name.tfvars"
sed -i "s/{{var.${region}PwrDevGrp}}/$pwr_dev_ad_group/g" "$project_name.tfvars"
sed -i "s/{{var.${region}PrdAPI}}/"dataplex.googleapis.com"/g" "$project_name.tfvars"

sed -i "s/\"{{var.*}}\"//g" "$project_name.tfvars"
