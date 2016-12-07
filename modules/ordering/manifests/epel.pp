class ordering::epel {
    yumrepo { 'epel':
      enabled => true,
    }

    Yumrepo['epel'] -> Package <||> #epel have to come after all other packages have been installed

    # An alternative approach to above
    #Package <||> {
    #    require +> Yumrepo['epel']
    #}
}
