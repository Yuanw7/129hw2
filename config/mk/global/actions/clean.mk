gitclean: clean_all
	@git clean -fdx
clean_all: distclean 
	@$(call clean_driver,"projects-stamp")
distclean:
	@$(call clean_driver,all)
clean: 
	@$(call clean_driver,$(what))
	@$(call clean_driver,"stamps")
reset:
	@$(call clean_driver,"")
	@$(call clean_driver,"int-libs")
check: 
	@FILES=`git ls-files --others|grep -v .tar.gz|grep -v .swp`; for target in $$FILES ; do echo $$target; done
	@find . -empty -type d
