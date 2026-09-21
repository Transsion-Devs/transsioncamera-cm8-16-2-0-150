.class public abstract Lcom/transsion/camera/featurelibs/media/codec/base/BaseParam;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected mMediaFormat:Landroid/media/MediaFormat;

.field protected mNeedMedia:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mediaFormat()Landroid/media/MediaFormat;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/codec/base/BaseParam;->mMediaFormat:Landroid/media/MediaFormat;

    return-object p0
.end method

.method public needMedia()Z
    .registers 1

    .line 23
    iget-boolean p0, p0, Lcom/transsion/camera/featurelibs/media/codec/base/BaseParam;->mNeedMedia:Z

    return p0
.end method
