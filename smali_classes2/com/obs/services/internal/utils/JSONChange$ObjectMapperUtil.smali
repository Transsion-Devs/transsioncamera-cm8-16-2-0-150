.class Lcom/obs/services/internal/utils/JSONChange$ObjectMapperUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/internal/utils/JSONChange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ObjectMapperUtil"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/obs/services/internal/utils/JSONChange$ObjectMapperUtil$ObjectMapperUtilInstance;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/obs/services/internal/utils/JSONChange$MyObjectMapper;
    .registers 1

    .line 87
    # getter for: Lcom/obs/services/internal/utils/JSONChange$ObjectMapperUtil$ObjectMapperUtilInstance;->MAPPER:Lcom/obs/services/internal/utils/JSONChange$MyObjectMapper;
    invoke-static {}, Lcom/obs/services/internal/utils/JSONChange$ObjectMapperUtil$ObjectMapperUtilInstance;->access$000()Lcom/obs/services/internal/utils/JSONChange$MyObjectMapper;

    move-result-object v0

    return-object v0
.end method
