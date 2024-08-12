##
app_short_name = "{{var.prjName}}"

environment_map = {
  meu   = ["{{var.meuEnvs}}"]
  amea  = ["{{var.ameaEnvs}}"]
  amer  = ["{{var.amerEnvs}}"]
}

subnet_map  = {
  meu   = {}
  amea  = {}
  amer  = {}
}

app_dev_team_group_emails = {
  "amea"  = ["{{var.ameaAppDevGrp}}"]
  "meu"   = ["{{var.meuAppDevGrp}}"]
  "amer"  = ["{{var.amerAppDevGrp}}"]
}

app_pwr_dev_team_group_emails = {
  "amea"  = ["{{var.ameaPwrDevGrp}}"]
  "meu"   = ["{{var.meuPwrDevGrp}}"]
  "amer"  = ["{{var.amerPwrDevGrp}}"]
}

business_standard_user_group_emails = {
  "amea"  = []
  "meu"   = []
  "amer"  = []
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
        additional_active_apis    = ["{{var.amerPrdAPI}}"]
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
        additional_active_apis    = ["{{var.ameaPrdAPI}}"]
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
        additional_active_apis    = ["{{var.meuPrdAPI}}"]
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
