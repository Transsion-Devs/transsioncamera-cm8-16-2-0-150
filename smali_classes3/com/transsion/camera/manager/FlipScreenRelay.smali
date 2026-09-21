.class public Lcom/transsion/camera/manager/FlipScreenRelay;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mLastModeName:Ljava/lang/String;

.field private mLastSaveTime:J

.field private mLastScreenFormType:I

.field private mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 25
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/manager/FlipScreenRelay;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/manager/FlipScreenRelay;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private flipToUnFlipInternal()Z
    .registers 4

    .line 84
    iget-object v0, p0, Lcom/transsion/camera/manager/FlipScreenRelay;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 85
    sget-object p0, Lcom/transsion/camera/manager/FlipScreenRelay;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "flipToUnFlipInternal mScreenManager is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 88
    :cond_d
    iget p0, p0, Lcom/transsion/camera/manager/FlipScreenRelay;->mLastScreenFormType:I

    const/4 v2, 0x7

    if-ne v2, p0, :cond_1a

    .line 89
    invoke-interface {v0}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getScreenFormType()I

    move-result p0

    if-eq v2, p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    return v1
.end method

.method private unFlipToFlipInternal()Z
    .registers 4

    .line 97
    iget-object v0, p0, Lcom/transsion/camera/manager/FlipScreenRelay;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 98
    sget-object p0, Lcom/transsion/camera/manager/FlipScreenRelay;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v0, "unFlipToFlipInternal mScreenManager is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 101
    :cond_e
    iget p0, p0, Lcom/transsion/camera/manager/FlipScreenRelay;->mLastScreenFormType:I

    const/4 v2, 0x7

    if-eq v2, p0, :cond_1b

    .line 102
    invoke-interface {v0}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getScreenFormType()I

    move-result p0

    if-ne v2, p0, :cond_1b

    const/4 p0, 0x1

    return p0

    :cond_1b
    return v1
.end method


# virtual methods
.method public flipToUnFlip()Z
    .registers 1

    .line 80
    invoke-direct {p0}, Lcom/transsion/camera/manager/FlipScreenRelay;->flipToUnFlipInternal()Z

    move-result p0

    return p0
.end method

.method public getLastModeName()Ljava/lang/String;
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/manager/FlipScreenRelay;->mLastModeName:Ljava/lang/String;

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    if-eqz p1, :cond_1a

    .line 45
    const-string v0, "key_last_screen_form_type"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/manager/FlipScreenRelay;->mLastScreenFormType:I

    .line 46
    const-string v0, "key_last_mode_name"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/manager/FlipScreenRelay;->mLastModeName:Ljava/lang/String;

    .line 47
    const-string v0, "key_last_save_time"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/manager/FlipScreenRelay;->mLastSaveTime:J

    .line 49
    :cond_1a
    sget-object p1, Lcom/transsion/camera/manager/FlipScreenRelay;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate mLastScreenFormType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/manager/FlipScreenRelay;->mLastScreenFormType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLastModeName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/manager/FlipScreenRelay;->mLastModeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mLastSaveTime\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/camera/manager/FlipScreenRelay;->mLastSaveTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5

    .line 54
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/manager/FlipScreenRelay;->mLastSaveTime:J

    .line 55
    iget-object v0, p0, Lcom/transsion/camera/manager/FlipScreenRelay;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    if-eqz v0, :cond_10

    .line 56
    invoke-interface {v0}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getScreenFormType()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/manager/FlipScreenRelay;->mLastScreenFormType:I

    .line 59
    :cond_10
    const-string v0, "key_last_screen_form_type"

    iget v1, p0, Lcom/transsion/camera/manager/FlipScreenRelay;->mLastScreenFormType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 60
    const-string v0, "key_last_mode_name"

    iget-object v1, p0, Lcom/transsion/camera/manager/FlipScreenRelay;->mLastModeName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v0, "key_last_save_time"

    iget-wide v1, p0, Lcom/transsion/camera/manager/FlipScreenRelay;->mLastSaveTime:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 63
    sget-object p1, Lcom/transsion/camera/manager/FlipScreenRelay;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSaveInstanceState mLastScreenFormType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/manager/FlipScreenRelay;->mLastScreenFormType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLastModeName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/manager/FlipScreenRelay;->mLastModeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mLastSaveTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/camera/manager/FlipScreenRelay;->mLastSaveTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public screenFlipRelay()Z
    .registers 2

    .line 76
    invoke-virtual {p0}, Lcom/transsion/camera/manager/FlipScreenRelay;->flipToUnFlip()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/transsion/camera/manager/FlipScreenRelay;->unFlipToFlip()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public setLastModeName(Ljava/lang/String;)V
    .registers 2

    .line 72
    iput-object p1, p0, Lcom/transsion/camera/manager/FlipScreenRelay;->mLastModeName:Ljava/lang/String;

    return-void
.end method

.method public setScreenManager(Lcom/transsion/camera/app/common/manager/IScreenManager;)V
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/transsion/camera/manager/FlipScreenRelay;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    return-void
.end method

.method public unFlipToFlip()Z
    .registers 1

    .line 93
    invoke-direct {p0}, Lcom/transsion/camera/manager/FlipScreenRelay;->unFlipToFlipInternal()Z

    move-result p0

    return p0
.end method
