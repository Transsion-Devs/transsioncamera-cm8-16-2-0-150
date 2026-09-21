.class public final enum Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProgramType"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

.field public static final enum TEXTURE_2D:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

.field public static final enum TEXTURE_2D_FOR_P3_VIDEO:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

.field public static final enum TEXTURE_EXT:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

.field public static final enum TEXTURE_EXT_FOR_P3:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;


# direct methods
.method private static synthetic $values()[Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;
    .registers 4

    .line 29
    sget-object v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;->TEXTURE_2D:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

    sget-object v1, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;->TEXTURE_EXT:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

    sget-object v2, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;->TEXTURE_EXT_FOR_P3:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

    sget-object v3, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;->TEXTURE_2D_FOR_P3_VIDEO:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 30
    new-instance v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

    const-string v1, "TEXTURE_2D"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;->TEXTURE_2D:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

    .line 31
    new-instance v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

    const-string v1, "TEXTURE_EXT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;->TEXTURE_EXT:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

    .line 32
    new-instance v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

    const-string v1, "TEXTURE_EXT_FOR_P3"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;->TEXTURE_EXT_FOR_P3:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

    .line 33
    new-instance v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

    const-string v1, "TEXTURE_2D_FOR_P3_VIDEO"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;->TEXTURE_2D_FOR_P3_VIDEO:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

    .line 29
    invoke-static {}, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;->$values()[Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;->$VALUES:[Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;
    .registers 2

    .line 29
    const-class v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;
    .registers 1

    .line 29
    sget-object v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;->$VALUES:[Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

    invoke-virtual {v0}, [Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

    return-object v0
.end method
