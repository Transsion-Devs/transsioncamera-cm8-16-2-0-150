.class public Lcom/bytedance/ies/cutsameconsumer/TemplateConsumerJNIUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNLEModelCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEModel;)J
    .registers 5

    const-wide/16 v0, 0x0

    if-nez p0, :cond_5

    return-wide v0

    .line 32
    :cond_5
    :try_start_5
    const-class v2, Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    const-string v3, "swigCPtr"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    if-nez v2, :cond_10

    return-wide v0

    :cond_10
    const/4 v3, 0x1

    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 37
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v0
    :try_end_18
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_18} :catch_19
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_18} :catch_19

    return-wide v0

    :catch_19
    move-exception p0

    .line 39
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-wide v0
.end method

.method public static getTemplateModelCPtr(Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;)J
    .registers 5

    const-wide/16 v0, 0x0

    if-nez p0, :cond_5

    return-wide v0

    .line 15
    :cond_5
    :try_start_5
    const-class v2, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TemplateModel;

    const-string v3, "handler"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    if-nez v2, :cond_10

    return-wide v0

    :cond_10
    const/4 v3, 0x1

    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 20
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v0
    :try_end_18
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_18} :catch_19
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_18} :catch_19

    return-wide v0

    :catch_19
    move-exception p0

    .line 22
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-wide v0
.end method
