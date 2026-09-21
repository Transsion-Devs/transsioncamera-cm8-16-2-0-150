.class Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI$AIVoiceCaptureObserver;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AIVoiceCaptureObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;Landroid/os/Handler;)V
    .registers 3

    .line 174
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI$AIVoiceCaptureObserver;->this$0:Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;

    .line 175
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 3

    .line 179
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 180
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI$AIVoiceCaptureObserver;->this$0:Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->-$$Nest$mupdateAIVoiceCaptueStatus(Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;Z)V

    return-void
.end method
