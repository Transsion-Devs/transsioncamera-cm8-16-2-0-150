.class public Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2$DXOScene;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DXOScene"
.end annotation


# instance fields
.field public final mColorCard:Z

.field public final mHasValidFace:Z

.field public final mTripodMode:Z


# direct methods
.method public constructor <init>(ZZZ)V
    .registers 4

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2$DXOScene;->mColorCard:Z

    .line 53
    iput-boolean p2, p0, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2$DXOScene;->mHasValidFace:Z

    .line 54
    iput-boolean p3, p0, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2$DXOScene;->mTripodMode:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DXOScene{mColorCard="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2$DXOScene;->mColorCard:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mHasValidFace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2$DXOScene;->mHasValidFace:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mTripodMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2$DXOScene;->mTripodMode:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
