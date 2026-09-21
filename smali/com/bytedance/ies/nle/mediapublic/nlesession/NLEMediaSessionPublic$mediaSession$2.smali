.class final Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic$mediaSession$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;-><init>(Lcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;Landroid/view/SurfaceHolder;Lcom/bytedance/ies/nle/editor_jni/NLEEditor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;


# direct methods
.method constructor <init>(Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic$mediaSession$2;->this$0:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;
    .registers 2

    .line 76
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;

    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic$mediaSession$2;->this$0:Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;

    # getter for: Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->mediaConfig:Lcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;
    invoke-static {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;->access$getMediaConfig$p(Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic;)Lcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;-><init>(Lcom/bytedance/ies/nle/editor_jni/NLEMediaConfig;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    .line 76
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEMediaSessionPublic$mediaSession$2;->invoke()Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;

    move-result-object p0

    return-object p0
.end method
