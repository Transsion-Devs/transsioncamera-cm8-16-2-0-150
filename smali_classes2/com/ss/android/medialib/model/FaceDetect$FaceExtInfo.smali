.class public Lcom/ss/android/medialib/model/FaceDetect$FaceExtInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/medialib/model/FaceDetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FaceExtInfo"
.end annotation


# instance fields
.field public eyeBrowLeftPoints:[Landroid/graphics/PointF;

.field public eyeBrowRightPoints:[Landroid/graphics/PointF;

.field public eyeCount:I

.field public eyeLeftPoints:[Landroid/graphics/PointF;

.field public eyeRightPoints:[Landroid/graphics/PointF;

.field public eyebrowCount:I

.field public irisCount:I

.field public irisLeftPoints:[Landroid/graphics/PointF;

.field public irisRightPoints:[Landroid/graphics/PointF;

.field public lipCount:I

.field public lipPoints:[Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
