.class public Lcom/ss/android/medialib/photomovie/PhotoMovie$SynthetiseParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/medialib/photomovie/PhotoMovie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SynthetiseParams"
.end annotation


# instance fields
.field public inputAudio:Ljava/lang/String;

.field public inputImages:[Ljava/lang/String;

.field public leftFilterPath:Ljava/lang/String;

.field public metaDataKeys:[Ljava/lang/String;

.field public metaDataValues:[Ljava/lang/String;

.field public orientation:I

.field public outputVideo:Ljava/lang/String;

.field public position:F

.field public progressCallback:Lcom/ss/android/medialib/photomovie/PhotoMovie$ProgressCallback;

.field public resolution:[I

.field public rightFilterPath:Ljava/lang/String;

.field public final transitionParams:Lcom/ss/android/medialib/photomovie/TransitionParams;


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 86
    iput v0, p0, Lcom/ss/android/medialib/photomovie/PhotoMovie$SynthetiseParams;->orientation:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 100
    iput v0, p0, Lcom/ss/android/medialib/photomovie/PhotoMovie$SynthetiseParams;->position:F

    .line 105
    new-instance v0, Lcom/ss/android/medialib/photomovie/TransitionParams;

    const/16 v1, 0x9c4

    const/16 v2, 0x1f4

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Lcom/ss/android/medialib/photomovie/TransitionParams;-><init>(III)V

    iput-object v0, p0, Lcom/ss/android/medialib/photomovie/PhotoMovie$SynthetiseParams;->transitionParams:Lcom/ss/android/medialib/photomovie/TransitionParams;

    return-void
.end method
