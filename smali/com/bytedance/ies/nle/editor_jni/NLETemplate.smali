.class public Lcom/bytedance/ies/nle/editor_jni/NLETemplate;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNLE_TEMPLATE_JSON_FILENAME()Ljava/lang/String;
    .registers 1

    .line 13
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->NLE_TEMPLATE_JSON_FILENAME_get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
