.class public Lcom/transsion/camera/app/common/recorder/AudioZoomManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private mAudioZoomValue:Ljava/lang/String;

.field private final mSupportAudioZoom:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 21
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AudioZoomManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/recorder/AudioZoomManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "1"

    iput-object v0, p0, Lcom/transsion/camera/app/common/recorder/AudioZoomManager;->mAudioZoomValue:Ljava/lang/String;

    .line 32
    const-string v0, "audio"

    .line 33
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/transsion/camera/app/common/recorder/AudioZoomManager;->mAudioManager:Landroid/media/AudioManager;

    .line 34
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/recorder/AudioZoomManager;->audioZoomSupport(Landroid/media/AudioManager;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/recorder/AudioZoomManager;->mSupportAudioZoom:Z

    return-void
.end method

.method private audioZoomSupport(Landroid/media/AudioManager;)Z
    .registers 5

    .line 39
    const-string p0, "audio_zoom_supported"

    invoke-virtual {p1, p0}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 40
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_22

    .line 41
    const-string p1, "="

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 42
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_22

    const/4 v0, 0x1

    .line 43
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    aget-object p1, p1, v0

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    goto :goto_23

    :cond_22
    const/4 p1, 0x0

    .line 46
    :goto_23
    sget-object v0, Lcom/transsion/camera/app/common/recorder/AudioZoomManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[audioZoomSupport] audioZoomResult:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", support:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p1
.end method


# virtual methods
.method public setAudioFocus(Z)V
    .registers 3

    if-eqz p1, :cond_f

    .line 56
    iget-object p1, p0, Lcom/transsion/camera/app/common/recorder/AudioZoomManager;->mAudioManager:Landroid/media/AudioManager;

    const-string v0, "audio_zoom_state=on"

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 57
    iget-object p1, p0, Lcom/transsion/camera/app/common/recorder/AudioZoomManager;->mAudioZoomValue:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/recorder/AudioZoomManager;->updateAudioZoom(Ljava/lang/String;)V

    return-void

    .line 59
    :cond_f
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/AudioZoomManager;->mAudioManager:Landroid/media/AudioManager;

    const-string p1, "audio_zoom_state=off"

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    return-void
.end method

.method public supportAudioZoom()Z
    .registers 1

    .line 51
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/recorder/AudioZoomManager;->mSupportAudioZoom:Z

    return p0
.end method

.method public updateAudioZoom(Ljava/lang/String;)V
    .registers 4

    .line 64
    iput-object p1, p0, Lcom/transsion/camera/app/common/recorder/AudioZoomManager;->mAudioZoomValue:Ljava/lang/String;

    .line 65
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/AudioZoomManager;->mAudioManager:Landroid/media/AudioManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "zoom_ratio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 66
    sget-object p0, Lcom/transsion/camera/app/common/recorder/AudioZoomManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateAudioZoom: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
