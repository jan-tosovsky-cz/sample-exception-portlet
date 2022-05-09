package com.mycompany.sample;

import com.liferay.portal.kernel.portlet.bridges.mvc.MVCPortlet;
import com.liferay.portal.kernel.servlet.SessionErrors;
import javax.portlet.ActionRequest;
import javax.portlet.ActionResponse;
import javax.portlet.Portlet;
import org.osgi.service.component.annotations.Component;

@Component(
        immediate = true,
        property = {
                "com.liferay.portlet.display-category=category.other",
                "javax.portlet.init-param.view-template=/view.jsp",
                "javax.portlet.display-name=Sample Exception",
                "javax.portlet.name=com_mycompany_sample"
        },
        service = Portlet.class
)
public class SamplePortlet extends MVCPortlet {

    public void submit(ActionRequest actionRequest, ActionResponse actionResponse) {
        SessionErrors.add(actionRequest, "sample-error");
    }

}
