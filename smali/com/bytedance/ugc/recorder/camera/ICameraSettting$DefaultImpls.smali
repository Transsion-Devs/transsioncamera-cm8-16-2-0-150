.class public final Lcom/bytedance/ugc/recorder/camera/ICameraSettting$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ugc/recorder/camera/ICameraSettting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static synthetic switchSlot$default(Lcom/bytedance/ugc/recorder/camera/ICameraSettting;Landroid/content/Context;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Lcom/bytedance/ies/nle/editor_jni/NLEModel;ZZILjava/lang/Object;)Lcom/bytedance/ies/nle/editor_jni/NLEModel;
    .registers 9

    if-nez p7, :cond_12

    and-int/lit8 p7, p6, 0x8

    const/4 v0, 0x1

    if-eqz p7, :cond_8

    move p4, v0

    :cond_8
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_d

    move p5, v0

    .line 34
    :cond_d
    invoke-interface/range {p0 .. p5}, Lcom/bytedance/ugc/recorder/camera/ICameraSettting;->switchSlot(Landroid/content/Context;Lcom/bytedance/ies/nle/editor_jni/NLETrackSlot;Lcom/bytedance/ies/nle/editor_jni/NLEModel;ZZ)Lcom/bytedance/ies/nle/editor_jni/NLEModel;

    move-result-object p0

    return-object p0

    :cond_12
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: switchSlot"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
