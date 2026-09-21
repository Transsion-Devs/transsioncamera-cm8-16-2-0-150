.class public Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
.super Lcom/transsion/camera/adapter/platformcamera/Key;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private keyName:Ljava/lang/String;

.field private mIsSessionCreate:Z

.field private mIsSessionKey:Z

.field private mRequestKey:Landroid/hardware/camera2/CaptureRequest$Key;

.field private mValue:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 13
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CaptureRequestKey"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V
    .registers 6

    .line 33
    invoke-direct {p0}, Lcom/transsion/camera/adapter/platformcamera/Key;-><init>()V

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->keyName:Ljava/lang/String;

    .line 35
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {v0, p1, p2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->mRequestKey:Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz p3, :cond_18

    .line 36
    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_18

    const/4 p2, 0x1

    goto :goto_19

    :cond_18
    const/4 p2, 0x0

    :goto_19
    iput-boolean p2, p0, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->mIsSessionKey:Z

    if-eqz p4, :cond_22

    if-eqz p2, :cond_22

    .line 38
    invoke-interface {p4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    :cond_22
    iput-object p1, p0, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->keyName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic getStatus()I
    .registers 1

    .line 12
    invoke-super {p0}, Lcom/transsion/camera/adapter/platformcamera/Key;->getStatus()I

    move-result p0

    return p0
.end method

.method public bridge synthetic isExist()Z
    .registers 1

    .line 12
    invoke-super {p0}, Lcom/transsion/camera/adapter/platformcamera/Key;->isExist()Z

    move-result p0

    return p0
.end method

.method public setSessionCreate(Z)V
    .registers 2

    .line 44
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->mIsSessionCreate:Z

    return-void
.end method

.method public bridge synthetic setStatus(I)V
    .registers 2

    .line 12
    invoke-super {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/Key;->setStatus(I)V

    return-void
.end method

.method public setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V
    .registers 5

    if-eqz p1, :cond_45

    .line 53
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->mRequestKey:Landroid/hardware/camera2/CaptureRequest$Key;

    if-nez v0, :cond_7

    goto :goto_45

    .line 57
    :cond_7
    :try_start_7
    iget-boolean v1, p0, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->mIsSessionKey:Z

    if-eqz v1, :cond_17

    iget-boolean v1, p0, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->mIsSessionCreate:Z

    if-nez v1, :cond_17

    .line 59
    iget-object p2, p0, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->mValue:Ljava/lang/Object;

    invoke-virtual {p1, v0, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1c

    :catch_15
    move-exception p1

    goto :goto_21

    .line 62
    :cond_17
    invoke-virtual {p1, v0, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 63
    iput-object p2, p0, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->mValue:Ljava/lang/Object;

    :goto_1c
    const/4 p1, 0x1

    .line 65
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setStatus(I)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_20} :catch_15

    return-void

    .line 67
    :goto_21
    sget-object p2, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setValue error, this key is not define: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->keyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 68
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setStatus(I)V

    :cond_45
    :goto_45
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->keyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->getStatus()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
