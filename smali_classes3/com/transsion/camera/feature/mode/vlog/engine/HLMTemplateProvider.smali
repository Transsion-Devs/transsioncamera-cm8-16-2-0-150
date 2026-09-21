.class public Lcom/transsion/camera/feature/mode/vlog/engine/HLMTemplateProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/volcengine/ck/highlight/api/ITemplateProvider;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static provideCKMomentTemplateWrapList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/vlog/bean/CKMomentTemplateWrapData;",
            ">;"
        }
    .end annotation

    .line 18
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/utils/TemplateUtil;->CK_MOMENT_WRAP_TEMPLATES:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public provideTemplateList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/volcengine/ck/moment/base/CKMomentTemplate;",
            ">;"
        }
    .end annotation

    .line 14
    sget-object p0, Lcom/transsion/camera/feature/mode/vlog/utils/TemplateUtil;->CK_MOMENT_TEMPLATES:Ljava/util/List;

    return-object p0
.end method
