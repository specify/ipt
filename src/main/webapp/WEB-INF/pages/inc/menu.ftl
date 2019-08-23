[#ftl output_format="HTML"]
</head>
 	<body>
		<div class="page clearfix" id="page">
			<header id="section-header" class="section section-header">
        <div id="zone-user-wrapper" class="zone-wrapper zone-user-wrapper clearfix">
          <div id="zone-user" class="zone zone-user clearfix container_24">
            <div class="region-inner region-branding-inner">
              <div class="branding-data clearfix">
                <div class="logo-img">
                  <a href="${baseURL}" rel="home" title="GBIF Logo" class="active">
                    <img src="${baseURL}/images/GBIF-2015-standard-ipt.png" />
                  </a>
                </div>
                <hgroup class="site-name-slogan">
                  <h1 class="site-name"><a href="${baseURL}" rel="home" title="Home" class="active">Integrated Publishing Toolkit</a><span class="logoSuperscript">(IPT)</span></h1>
                  <h6 class="site-slogan">free and open access to biodiversity data</h6>
                </hgroup>

              </div>
            </div>
          </div>
        </div>
        <!-- show production logo only if ipt 1) .war was not built in test mode and 2) run in production mode -->
        <div id="zone-branding-wrapper" class="zone-wrapper zone-branding-wrapper clearfix">
          <div id="zone-branding" class="zone zone-branding clearfix container_24">

      	  </div>
      		<div id="search"></div>
        </div>
		  </header>
		  <section id="section-content" class="section section-content">
        <div id="zone-content-wrapper" class="zone-wrapper zone-content-wrapper clearfix">
          <div id="zone-content" class="zone zone-content clearfix container_24">

[#if sideMenuEml!false]

			<aside class="grid_6 push_18">
			<div class="clearfix" id="sidebar">
				<h2>[@s.text name='manage.metadata.section' /]</h2>
				<ul class="sidebar">
				[#list ["basic", "geocoverage", "taxcoverage","tempcoverage", "keywords", "parties", "project", "methods", "citations", "collections", "physical", "additional"] as it]
				 <li[#if currentSideMenu?? && currentSideMenu==it] class="current"[#else] class="sidebar"[/#if]><a href="metadata-${it}.do?r=${resource.shortname!r!}">[@s.text name="submenu.${it}"/]</a></li>
				[/#list]
				</ul>
			</div>
			</aside>

			<div class="grid_18 pull_6 region region-content" id="region-content">

[#else]

			<div class="grid_24 region region-content" id="region-content">
[/#if]


			[@s.actionmessage/]
			[#if warnings?size>0]
			 <ul class="warnMessage">
			 [#list warnings as w]
	          <li><span>${w!}</span></li>
			 [/#list]
             </ul>
            [/#if]
			[@s.actionerror/]

            <div id="dialog-confirm" title="[@s.text name="basic.confirm"/]" style="display: none;"></div>
