.class public final Lcom/bytedance/ies/nlemedia/nlesession/basecomponent/INLEBaseComponent$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ies/nlemedia/nlesession/basecomponent/INLEBaseComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static synthetic injectCoreReplayEditor$default(Lcom/bytedance/ies/nlemedia/nlesession/basecomponent/INLEBaseComponent;Ljava/lang/Object;Lcom/bytedance/ies/nle/editor_jni/NLEEditor;ILjava/lang/Object;)V
    .registers 5

    if-nez p4, :cond_b

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_7

    const/4 p2, 0x0

    .line 6
    :cond_7
    invoke-interface {p0, p1, p2}, Lcom/bytedance/ies/nlemedia/nlesession/basecomponent/INLEBaseComponent;->injectCoreReplayEditor(Ljava/lang/Object;Lcom/bytedance/ies/nle/editor_jni/NLEEditor;)V

    return-void

    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: injectCoreReplayEditor"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
