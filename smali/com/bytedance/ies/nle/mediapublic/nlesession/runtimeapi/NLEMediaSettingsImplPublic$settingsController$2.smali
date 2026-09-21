.class final Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaSettingsImplPublic$settingsController$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaSettingsImplPublic;-><init>()V
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
.field final synthetic this$0:Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaSettingsImplPublic;


# direct methods
.method constructor <init>(Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaSettingsImplPublic;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaSettingsImplPublic$settingsController$2;->this$0:Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaSettingsImplPublic;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaSettingsImplPublic$settingsController$2;->this$0:Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaSettingsImplPublic;

    # invokes: Lcom/bytedance/ies/nle/mediapublic/nlesession/NLEBaseComponent;->getNleEditorPublic()Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;
    invoke-static {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaSettingsImplPublic;->access$getNleEditorPublic(Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaSettingsImplPublic;)Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaSession;->getMediaSettingApi()Lcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    .line 15
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/mediapublic/nlesession/runtimeapi/NLEMediaSettingsImplPublic$settingsController$2;->invoke()Lcom/bytedance/ies/nle/editor_jni/NLEMediaSettingsController;

    move-result-object p0

    return-object p0
.end method
