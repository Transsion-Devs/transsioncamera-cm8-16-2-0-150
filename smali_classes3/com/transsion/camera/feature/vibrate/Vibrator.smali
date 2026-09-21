.class public Lcom/transsion/camera/feature/vibrate/Vibrator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/vibrate/IVibrator;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 12
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Vibrator"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/vibrate/Vibrator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/transsion/camera/feature/vibrate/Vibrator;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public init()V
    .registers 3

    .line 28
    sget-object v0, Lcom/transsion/camera/feature/vibrate/Vibrator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "initHaptic +"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lcom/apprichtap/haptic/RichTapUtils;->getInstance()Lcom/apprichtap/haptic/RichTapUtils;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/camera/feature/vibrate/Vibrator;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Lcom/apprichtap/haptic/RichTapUtils;->init(Landroid/content/Context;)Lcom/apprichtap/haptic/RichTapUtils;

    .line 30
    const-string p0, "initHaptic -"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public isSupport()Z
    .registers 4

    .line 21
    invoke-static {}, Lcom/apprichtap/haptic/RichTapUtils;->getInstance()Lcom/apprichtap/haptic/RichTapUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/apprichtap/haptic/RichTapUtils;->isSupportedRichTap()Z

    move-result p0

    .line 23
    sget-object v0, Lcom/transsion/camera/feature/vibrate/Vibrator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupport: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method

.method public play(Ljava/lang/String;)V
    .registers 4

    .line 42
    sget-object p0, Lcom/transsion/camera/feature/vibrate/Vibrator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playHaptic + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/apprichtap/haptic/RichTapUtils;->getInstance()Lcom/apprichtap/haptic/RichTapUtils;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/apprichtap/haptic/RichTapUtils;->playHaptic(Ljava/io/File;I)V

    .line 44
    const-string p1, "playHaptic -"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public release()V
    .registers 2

    .line 35
    sget-object p0, Lcom/transsion/camera/feature/vibrate/Vibrator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "releaseHaptic +"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 36
    invoke-static {}, Lcom/apprichtap/haptic/RichTapUtils;->getInstance()Lcom/apprichtap/haptic/RichTapUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apprichtap/haptic/RichTapUtils;->quit()V

    .line 37
    const-string v0, "releaseHaptic -"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
