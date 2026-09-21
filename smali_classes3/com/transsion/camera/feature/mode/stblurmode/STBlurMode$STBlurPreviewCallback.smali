.class Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;
.super Lcom/transsion/camera/app/common/preview/PreviewCallbacker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "STBlurPreviewCallback"
.end annotation


# instance fields
.field private m2DTextureId:I

.field private mGLProgram2D:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

.field private mInitState:Z

.field private mModeResumed:Z

.field private mSurfaceHeight:I

.field private mSurfaceWidth:I

.field final synthetic this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)V
    .registers 2

    .line 575
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/preview/PreviewCallbacker;-><init>()V

    const/4 p1, -0x1

    .line 577
    iput p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->m2DTextureId:I

    const/4 p1, 0x0

    .line 580
    iput p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->mSurfaceWidth:I

    .line 581
    iput p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->mSurfaceHeight:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;-><init>(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)V

    return-void
.end method

.method private create2DProgram()V
    .registers 3

    .line 602
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->mGLProgram2D:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->-$$Nest$misHumanEffectSupported(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 603
    new-instance v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    sget-object v1, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;->TEXTURE_2D:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;-><init>(Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->mGLProgram2D:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    :cond_15
    return-void
.end method

.method private create2DTexture(II)V
    .registers 6

    .line 584
    iget v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->m2DTextureId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3f

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->-$$Nest$misHumanEffectSupported(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 585
    iput p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->mSurfaceWidth:I

    .line 586
    iput p2, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->mSurfaceHeight:I

    .line 587
    invoke-static {p2, p1}, Lcom/transsion/camera/app/ui/opengl/GLUtils;->initTextureId(II)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->m2DTextureId:I

    .line 588
    invoke-static {}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create2DTexture"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->m2DTextureId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_3f
    return-void
.end method

.method private destory2DProgram()V
    .registers 2

    .line 608
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->mGLProgram2D:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    if-eqz v0, :cond_a

    .line 609
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->release()V

    const/4 v0, 0x0

    .line 610
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->mGLProgram2D:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    :cond_a
    return-void
.end method

.method private destroy2DTexture()V
    .registers 5

    .line 593
    iget v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->m2DTextureId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_14

    const/4 v2, 0x1

    .line 594
    filled-new-array {v0}, [I

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 595
    iput v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->m2DTextureId:I

    .line 596
    iput v3, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->mSurfaceWidth:I

    .line 597
    iput v3, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->mSurfaceHeight:I

    :cond_14
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/SurfaceTexture;III)Z
    .registers 5

    .line 665
    invoke-direct {p0, p3, p4}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->create2DTexture(II)V

    .line 667
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->-$$Nest$fgetmFacelightingClient(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Lcom/transsion/camera/app/common/algorithm/facelighting/IFacelightingClient;

    .line 673
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->-$$Nest$fputmAlgoProcessed(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;Z)V

    .line 676
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->-$$Nest$fgetmSTBlurClient(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurClient;

    .line 677
    invoke-static {}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "draw mSTBlurClient: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {p4}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->-$$Nest$fgetmSTBlurClient(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurClient;

    const/4 p4, 0x0

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, ", mSTBlurClientValid: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->-$$Nest$fgetmSTBlurClientValid(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Z

    move-result p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p2
.end method

.method public drawOffScreen(Landroid/graphics/SurfaceTexture;IIII)Z
    .registers 6

    if-eqz p1, :cond_25

    .line 655
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->mGLProgram2D:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    if-eqz p2, :cond_25

    iget p2, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->m2DTextureId:I

    const/4 p3, -0x1

    if-eq p2, p3, :cond_25

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->-$$Nest$fgetmAlgoProcessed(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Z

    move-result p2

    if-eqz p2, :cond_25

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->-$$Nest$misHumanEffectSupported(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Z

    move-result p2

    if-nez p2, :cond_1c

    goto :goto_25

    .line 658
    :cond_1c
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->mGLProgram2D:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    iget p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->m2DTextureId:I

    invoke-virtual {p2, p1, p0}, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->draw(Landroid/graphics/SurfaceTexture;I)V

    const/4 p0, 0x1

    return p0

    :cond_25
    :goto_25
    const/4 p0, 0x0

    return p0
.end method

.method public modeInitCallback()V
    .registers 3

    .line 616
    invoke-static {}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "modeInitCallback"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 617
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->create2DProgram()V

    return-void
.end method

.method public modePauseCallback()V
    .registers 4

    .line 717
    invoke-static {}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "modePauseCallback,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->mModeResumed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 718
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->mModeResumed:Z

    .line 719
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->-$$Nest$fgetmSTBlurClient(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurClient;

    .line 720
    invoke-static {}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "modePauseCallback mSTBlurClient is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public modeResumeCallback()V
    .registers 4

    .line 702
    invoke-static {}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "modeResumeCallback,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->mModeResumed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 703
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->mModeResumed:Z

    .line 704
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->-$$Nest$fgetmSTBlurClient(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurClient;

    .line 705
    invoke-static {}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "modeResumeCallback mSTBlurClient: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->-$$Nest$fgetmSTBlurClient(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurClient;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mSTBlurClientValid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->-$$Nest$fgetmSTBlurClientValid(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public modeUninitCallback()V
    .registers 4

    .line 622
    invoke-static {}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "modeUninitCallback,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->mGLProgram2D:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 623
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->destory2DProgram()V

    .line 624
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->-$$Nest$mdestroyFacelighting(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)V

    .line 625
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->destroy2DTexture()V

    return-void
.end method

.method public surfaceChangedCallback(Landroid/graphics/SurfaceTexture;II)V
    .registers 6

    .line 637
    invoke-static {}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "surfaceChangedCallback,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->m2DTextureId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 638
    iget p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->m2DTextureId:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3c

    iget v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->mSurfaceWidth:I

    if-ne v0, p2, :cond_35

    iget v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->mSurfaceHeight:I

    if-eq v0, p3, :cond_3c

    .line 639
    :cond_35
    iput p2, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->mSurfaceWidth:I

    .line 640
    iput p3, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->mSurfaceHeight:I

    .line 641
    invoke-static {p1, p3, p2}, Lcom/transsion/camera/app/ui/opengl/GLUtils;->updateTextureId(III)I

    :cond_3c
    return-void
.end method

.method public surfaceCreatedCallback(Landroid/graphics/SurfaceTexture;)V
    .registers 4

    .line 630
    invoke-static {}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "surfaceCreatedCallback,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->m2DTextureId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 631
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->create2DProgram()V

    .line 632
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->-$$Nest$mcreateFacelighting(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)V

    return-void
.end method

.method public surfaceDestroyCallback(Landroid/graphics/SurfaceTexture;)V
    .registers 4

    .line 647
    invoke-static {}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "surfaceDestroyCallback,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->m2DTextureId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 648
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->destory2DProgram()V

    .line 649
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->this$0:Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->-$$Nest$mdestroyFacelighting(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)V

    .line 650
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;->destroy2DTexture()V

    return-void
.end method
