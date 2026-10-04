.class public Lcom/singleblur/faceapi/FaceSegment;
.super Lcom/singleblur/faceapi/FaceHandleBase;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "FaceSegment"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 10
    invoke-direct {p0}, Lcom/singleblur/faceapi/FaceHandleBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected releaseHandle()V
    .registers 1

    return-void
.end method

.method public trackFace([BLcom/singleblur/faceapi/model/CvPixelFormat;IILcom/singleblur/faceapi/model/FaceOrientation;[B)V
    .registers 7

    return-void
.end method
