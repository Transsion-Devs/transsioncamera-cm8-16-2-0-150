.class public final Lcom/ss/android/vesdk/VEEditorSettings$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEEditorSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mVEEditorSettings:Lcom/ss/android/vesdk/VEEditorSettings;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    new-instance v0, Lcom/ss/android/vesdk/VEEditorSettings;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ss/android/vesdk/VEEditorSettings;-><init>(Lcom/ss/android/vesdk/VEEditorSettings$1;)V

    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditorSettings$Builder;->mVEEditorSettings:Lcom/ss/android/vesdk/VEEditorSettings;

    return-void
.end method


# virtual methods
.method public build()Lcom/ss/android/vesdk/VEEditorSettings;
    .registers 1

    .line 341
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditorSettings$Builder;->mVEEditorSettings:Lcom/ss/android/vesdk/VEEditorSettings;

    return-object p0
.end method

.method public setATrimIn([I)Lcom/ss/android/vesdk/VEEditorSettings$Builder;
    .registers 3

    .line 262
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditorSettings$Builder;->mVEEditorSettings:Lcom/ss/android/vesdk/VEEditorSettings;

    # setter for: Lcom/ss/android/vesdk/VEEditorSettings;->aTrimIn:[I
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEEditorSettings;->access$902(Lcom/ss/android/vesdk/VEEditorSettings;[I)[I

    return-object p0
.end method

.method public setATrimOut([I)Lcom/ss/android/vesdk/VEEditorSettings$Builder;
    .registers 3

    .line 272
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditorSettings$Builder;->mVEEditorSettings:Lcom/ss/android/vesdk/VEEditorSettings;

    # setter for: Lcom/ss/android/vesdk/VEEditorSettings;->aTrimOut:[I
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEEditorSettings;->access$1002(Lcom/ss/android/vesdk/VEEditorSettings;[I)[I

    return-object p0
.end method

.method public setAudioFileInfos([Ljava/lang/String;)Lcom/ss/android/vesdk/VEEditorSettings$Builder;
    .registers 3

    .line 252
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditorSettings$Builder;->mVEEditorSettings:Lcom/ss/android/vesdk/VEEditorSettings;

    # setter for: Lcom/ss/android/vesdk/VEEditorSettings;->audioFileInfos:[Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEEditorSettings;->access$802(Lcom/ss/android/vesdk/VEEditorSettings;[Ljava/lang/String;)[Ljava/lang/String;

    return-object p0
.end method

.method public setAudioFilePaths([Ljava/lang/String;)Lcom/ss/android/vesdk/VEEditorSettings$Builder;
    .registers 3

    .line 242
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditorSettings$Builder;->mVEEditorSettings:Lcom/ss/android/vesdk/VEEditorSettings;

    # setter for: Lcom/ss/android/vesdk/VEEditorSettings;->audioFilePaths:[Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEEditorSettings;->access$702(Lcom/ss/android/vesdk/VEEditorSettings;[Ljava/lang/String;)[Ljava/lang/String;

    return-object p0
.end method

.method public setCanvasFilterParams([Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;)Lcom/ss/android/vesdk/VEEditorSettings$Builder;
    .registers 3

    .line 292
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditorSettings$Builder;->mVEEditorSettings:Lcom/ss/android/vesdk/VEEditorSettings;

    # setter for: Lcom/ss/android/vesdk/VEEditorSettings;->canvasFilterParams:[Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEEditorSettings;->access$1202(Lcom/ss/android/vesdk/VEEditorSettings;[Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;)[Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;

    return-object p0
.end method

.method public setImages([Landroid/graphics/Bitmap;)Lcom/ss/android/vesdk/VEEditorSettings$Builder;
    .registers 3

    .line 192
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditorSettings$Builder;->mVEEditorSettings:Lcom/ss/android/vesdk/VEEditorSettings;

    # setter for: Lcom/ss/android/vesdk/VEEditorSettings;->images:[Landroid/graphics/Bitmap;
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEEditorSettings;->access$202(Lcom/ss/android/vesdk/VEEditorSettings;[Landroid/graphics/Bitmap;)[Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public setSizes([Lcom/ss/android/vesdk/VESize;)Lcom/ss/android/vesdk/VEEditorSettings$Builder;
    .registers 3

    .line 332
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditorSettings$Builder;->mVEEditorSettings:Lcom/ss/android/vesdk/VEEditorSettings;

    # setter for: Lcom/ss/android/vesdk/VEEditorSettings;->sizes:[Lcom/ss/android/vesdk/VESize;
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEEditorSettings;->access$1602(Lcom/ss/android/vesdk/VEEditorSettings;[Lcom/ss/android/vesdk/VESize;)[Lcom/ss/android/vesdk/VESize;

    return-object p0
.end method

.method public setSpeed([F)Lcom/ss/android/vesdk/VEEditorSettings$Builder;
    .registers 3

    .line 282
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditorSettings$Builder;->mVEEditorSettings:Lcom/ss/android/vesdk/VEEditorSettings;

    # setter for: Lcom/ss/android/vesdk/VEEditorSettings;->speed:[F
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEEditorSettings;->access$1102(Lcom/ss/android/vesdk/VEEditorSettings;[F)[F

    return-object p0
.end method

.method public setVTransitionFilterParam([Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam;)Lcom/ss/android/vesdk/VEEditorSettings$Builder;
    .registers 3

    .line 232
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditorSettings$Builder;->mVEEditorSettings:Lcom/ss/android/vesdk/VEEditorSettings;

    # setter for: Lcom/ss/android/vesdk/VEEditorSettings;->vTransitionFilterParam:[Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam;
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEEditorSettings;->access$602(Lcom/ss/android/vesdk/VEEditorSettings;[Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam;)[Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam;

    return-object p0
.end method

.method public setVTrimIn([I)Lcom/ss/android/vesdk/VEEditorSettings$Builder;
    .registers 3

    .line 212
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditorSettings$Builder;->mVEEditorSettings:Lcom/ss/android/vesdk/VEEditorSettings;

    # setter for: Lcom/ss/android/vesdk/VEEditorSettings;->vTrimIn:[I
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEEditorSettings;->access$402(Lcom/ss/android/vesdk/VEEditorSettings;[I)[I

    return-object p0
.end method

.method public setVTrimOut([I)Lcom/ss/android/vesdk/VEEditorSettings$Builder;
    .registers 3

    .line 222
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditorSettings$Builder;->mVEEditorSettings:Lcom/ss/android/vesdk/VEEditorSettings;

    # setter for: Lcom/ss/android/vesdk/VEEditorSettings;->vTrimOut:[I
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEEditorSettings;->access$502(Lcom/ss/android/vesdk/VEEditorSettings;[I)[I

    return-object p0
.end method

.method public setVideoFileInfos([Ljava/lang/String;)Lcom/ss/android/vesdk/VEEditorSettings$Builder;
    .registers 3

    .line 202
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditorSettings$Builder;->mVEEditorSettings:Lcom/ss/android/vesdk/VEEditorSettings;

    # setter for: Lcom/ss/android/vesdk/VEEditorSettings;->videoFileInfos:[Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEEditorSettings;->access$302(Lcom/ss/android/vesdk/VEEditorSettings;[Ljava/lang/String;)[Ljava/lang/String;

    return-object p0
.end method

.method public setVideoFilePaths([Ljava/lang/String;)Lcom/ss/android/vesdk/VEEditorSettings$Builder;
    .registers 3

    .line 182
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditorSettings$Builder;->mVEEditorSettings:Lcom/ss/android/vesdk/VEEditorSettings;

    # setter for: Lcom/ss/android/vesdk/VEEditorSettings;->videoFilePaths:[Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEEditorSettings;->access$102(Lcom/ss/android/vesdk/VEEditorSettings;[Ljava/lang/String;)[Ljava/lang/String;

    return-object p0
.end method

.method public setVideoGravity(Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;)Lcom/ss/android/vesdk/VEEditorSettings$Builder;
    .registers 3

    .line 312
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditorSettings$Builder;->mVEEditorSettings:Lcom/ss/android/vesdk/VEEditorSettings;

    # setter for: Lcom/ss/android/vesdk/VEEditorSettings;->videoGravity:Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEEditorSettings;->access$1402(Lcom/ss/android/vesdk/VEEditorSettings;Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;)Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;

    return-object p0
.end method

.method public setVideoOutRes(Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;)Lcom/ss/android/vesdk/VEEditorSettings$Builder;
    .registers 3

    .line 302
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditorSettings$Builder;->mVEEditorSettings:Lcom/ss/android/vesdk/VEEditorSettings;

    # setter for: Lcom/ss/android/vesdk/VEEditorSettings;->videoOutRes:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEEditorSettings;->access$1302(Lcom/ss/android/vesdk/VEEditorSettings;Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;)Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    return-object p0
.end method

.method public setVideoScaletype(Lcom/ss/android/vesdk/VEEditor$VIDEO_SCALETYPE;)Lcom/ss/android/vesdk/VEEditorSettings$Builder;
    .registers 3

    .line 322
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditorSettings$Builder;->mVEEditorSettings:Lcom/ss/android/vesdk/VEEditorSettings;

    # setter for: Lcom/ss/android/vesdk/VEEditorSettings;->videoScaletype:Lcom/ss/android/vesdk/VEEditor$VIDEO_SCALETYPE;
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEEditorSettings;->access$1502(Lcom/ss/android/vesdk/VEEditorSettings;Lcom/ss/android/vesdk/VEEditor$VIDEO_SCALETYPE;)Lcom/ss/android/vesdk/VEEditor$VIDEO_SCALETYPE;

    return-object p0
.end method
