package uk.gov.hmcts.reform.cdapi.domain;

import lombok.Data;

import javax.persistence.Column;
import java.io.Serializable;
import javax.persistence.Embeddable;

@Data
@Embeddable
public class CategoryKey implements Serializable {
    @Column(name = "categorykey")
    private String categoryKey;

    @Column(name = "serviceid")
    private String serviceId;

    private String key;

}

