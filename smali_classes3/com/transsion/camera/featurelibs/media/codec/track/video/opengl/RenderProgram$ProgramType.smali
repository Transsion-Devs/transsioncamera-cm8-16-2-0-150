.class public final enum Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram$ProgramType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProgramType"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram$ProgramType;

.field public static final enum TEXTURE_2D:Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram$ProgramType;

.field public static final enum TEXTURE_EXT:Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram$ProgramType;


# direct methods
.method private static synthetic $values()[Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram$ProgramType;
    .registers 2

    .line 26
    sget-object v0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram$ProgramType;->TEXTURE_2D:Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram$ProgramType;

    sget-object v1, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram$ProgramType;->TEXTURE_EXT:Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram$ProgramType;

    filled-new-array {v0, v1}, [Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram$ProgramType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 27
    new-instance v0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram$ProgramType;

    const-string v1, "TEXTURE_2D"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram$ProgramType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram$ProgramType;->TEXTURE_2D:Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram$ProgramType;

    .line 28
    new-instance v0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram$ProgramType;

    const-string v1, "TEXTURE_EXT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram$ProgramType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram$ProgramType;->TEXTURE_EXT:Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram$ProgramType;

    .line 26
    invoke-static {}, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram$ProgramType;->$values()[Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram$ProgramType;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram$ProgramType;->$VALUES:[Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram$ProgramType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram$ProgramType;
    .registers 2

    .line 26
    const-class v0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram$ProgramType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram$ProgramType;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram$ProgramType;
    .registers 1

    .line 26
    sget-object v0, Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram$ProgramType;->$VALUES:[Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram$ProgramType;

    invoke-virtual {v0}, [Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram$ProgramType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/featurelibs/media/codec/track/video/opengl/RenderProgram$ProgramType;

    return-object v0
.end method
