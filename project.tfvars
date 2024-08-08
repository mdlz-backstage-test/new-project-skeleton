##
app_short_name = "1sa"

environment_map = {
  meu   = []
  amea  = []
  amer  = ["prd", "mrqa","prpd"]
}

subnet_map  = {
  meu   = {}
  amea  = {}
  amer  = {}
}

app_dev_team_group_emails = {
  "amea"  = []
  "meu"   = []
  "amer"  = ["mdz-gcp-app-amer-analytics-datalake-appdev-grp@mdlz.com"]
}

app_pwr_dev_team_group_emails = {
  "amea"  = []
  "meu"   = []
  "amer"  = ["mdz-gcp-app-amer-analytics-datalake-pwrdev-grp@mdlz.com"]
}

business_standard_user_group_emails = {
  "amea"  = []
  "meu"   = []
  "amer"  = ["mdz-gcp-amer-1sa-bkt-usr-grp@mdlz.com"]
}

admin_group_emails = {
  "amea"    = []
  "meu"     = []
  "amer"    = []
}


// Only update the following, if necessary //

project_metadata_map  = {
  dev = {
    oslogin           = true
    guest_attributes  = false
    osconfig          = false
  }
  qa  = {
    oslogin           = true
    guest_attributes  = false
    osconfig          = false
  }
  prd = {
    oslogin           = true
    guest_attributes  = false
    osconfig          = false
  }
  mrqa = {
    oslogin           = true
    guest_attributes  = false
    osconfig          = false
  }
  prpd = {
    oslogin           = true
    guest_attributes  = false
    osconfig          = false
  }
}

override_map  = {
   amer = {
   
      dev = {
        additional_active_apis    = []
        additional_project_labels = {}
      }
      qa = {
        additional_active_apis    = []
        additional_project_labels = {}
      }
      prd = {
        additional_active_apis    = ["dataplex.googleapis.com"]
        additional_project_labels = {}
      }
      mrqa = {
        additional_active_apis    = []
        additional_project_labels = {}
      }
      prpd = {
        additional_active_apis    = []
        additional_project_labels = {}
      }
    }
  
  amea= {
      dev = {
        additional_active_apis    = []
        additional_project_labels = {}
      }
      qa = {
        additional_active_apis    = []
        additional_project_labels = {}
      }
      prd = {
        additional_active_apis    = []
        additional_project_labels = {}
      }
      mrqa = {
        additional_active_apis    = []
        additional_project_labels = {}
      }
      prpd = {
        additional_active_apis    = []
        additional_project_labels = {}
      }
  }
  meu = {
      dev = {
        additional_active_apis    = []
        additional_project_labels = {}
      }
      qa = {
        additional_active_apis    = []
        additional_project_labels = {}
      }
      prd = {
        additional_active_apis    = []
        additional_project_labels = {}
      }
      mrqa = {
        additional_active_apis    = []
        additional_project_labels = {}
      }
      prpd = {
        additional_active_apis    = []
        additional_project_labels = {}
      }
  }
}
