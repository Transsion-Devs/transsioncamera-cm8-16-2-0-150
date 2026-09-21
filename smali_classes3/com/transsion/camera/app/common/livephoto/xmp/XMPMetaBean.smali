.class public Lcom/transsion/camera/app/common/livephoto/xmp/XMPMetaBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mGainMapLength:Ljava/lang/String;

.field private mIsXDRPhoto:Z

.field private mXDRVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGainMapLength()Ljava/lang/String;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/transsion/camera/app/common/livephoto/xmp/XMPMetaBean;->mGainMapLength:Ljava/lang/String;

    return-object p0
.end method

.method public getXDRVersion()Ljava/lang/String;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/transsion/camera/app/common/livephoto/xmp/XMPMetaBean;->mXDRVersion:Ljava/lang/String;

    return-object p0
.end method

.method public isXDRPhoto()Z
    .registers 1

    .line 9
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/livephoto/xmp/XMPMetaBean;->mIsXDRPhoto:Z

    return p0
.end method

.method public setGainMapLength(Ljava/lang/String;)V
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/transsion/camera/app/common/livephoto/xmp/XMPMetaBean;->mGainMapLength:Ljava/lang/String;

    return-void
.end method

.method public setXDRPhoto(Z)V
    .registers 2

    .line 13
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/livephoto/xmp/XMPMetaBean;->mIsXDRPhoto:Z

    return-void
.end method

.method public setXDRVersion(Ljava/lang/String;)V
    .registers 2

    .line 29
    iput-object p1, p0, Lcom/transsion/camera/app/common/livephoto/xmp/XMPMetaBean;->mXDRVersion:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XMPMetaBean{mIsXDRPhoto="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/livephoto/xmp/XMPMetaBean;->mIsXDRPhoto:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mGainMapLength=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/livephoto/xmp/XMPMetaBean;->mGainMapLength:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mXDRVersion=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/livephoto/xmp/XMPMetaBean;->mXDRVersion:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
