.class public Lcom/ss/android/vesdk/VEUtils$VEVideoStreamInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VEVideoStreamInfo"
.end annotation


# instance fields
.field public codecId:I

.field public duration:I

.field public frameRate:F

.field public height:I

.field public pixelAspectRatio:F

.field public pixelFormat:I

.field public rotation:I

.field public startTime:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
