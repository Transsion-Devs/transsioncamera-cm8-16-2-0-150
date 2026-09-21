.class public Lcom/transsion/camera/app/common/setting/SettingDeviceRequesterProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mModeDeviceRequesterImpl:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 9
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SettingDeviceRequesterProxy"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/setting/SettingDeviceRequesterProxy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestChangeCommand(Ljava/lang/String;)V
    .registers 2

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingDeviceRequesterProxy;->mModeDeviceRequesterImpl:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    if-eqz p0, :cond_7

    .line 51
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public requestChangeSettingValue(Ljava/lang/String;)V
    .registers 2

    .line 19
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingDeviceRequesterProxy;->mModeDeviceRequesterImpl:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    if-eqz p0, :cond_7

    .line 20
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public varargs requestChangeSettingValueJustSelf([Ljava/lang/String;)V
    .registers 2

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingDeviceRequesterProxy;->mModeDeviceRequesterImpl:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    if-eqz p0, :cond_7

    .line 43
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf([Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public requestChangeSettingValueSync(Ljava/lang/String;)V
    .registers 2

    .line 27
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingDeviceRequesterProxy;->mModeDeviceRequesterImpl:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    if-eqz p0, :cond_7

    .line 28
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueSync(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public requestZoomValueChanged(Ljava/lang/String;Z)V
    .registers 3

    .line 34
    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/SettingDeviceRequesterProxy;->mModeDeviceRequesterImpl:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    if-eqz p0, :cond_7

    .line 35
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestZoomValueChanged(Ljava/lang/String;Z)V

    :cond_7
    return-void
.end method

.method public unInit()V
    .registers 1

    return-void
.end method

.method public updateModeDeviceRequester(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .registers 2

    .line 57
    monitor-enter p0

    .line 58
    :try_start_1
    iput-object p1, p0, Lcom/transsion/camera/app/common/setting/SettingDeviceRequesterProxy;->mModeDeviceRequesterImpl:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    .line 59
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw p1
.end method
