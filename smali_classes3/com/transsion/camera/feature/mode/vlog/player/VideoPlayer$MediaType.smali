.class public final enum Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$MediaType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediaType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$MediaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$MediaType;

.field public static final enum AUDIO:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$MediaType;

.field public static final enum VIDEO:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$MediaType;


# direct methods
.method private static synthetic $values()[Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$MediaType;
    .registers 2

    .line 58
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$MediaType;->VIDEO:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$MediaType;

    sget-object v1, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$MediaType;->AUDIO:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$MediaType;

    filled-new-array {v0, v1}, [Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$MediaType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 59
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$MediaType;

    const-string v1, "VIDEO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$MediaType;->VIDEO:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$MediaType;

    .line 60
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$MediaType;

    const-string v1, "AUDIO"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$MediaType;->AUDIO:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$MediaType;

    .line 58
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$MediaType;->$values()[Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$MediaType;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$MediaType;->$VALUES:[Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$MediaType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$MediaType;
    .registers 2

    .line 58
    const-class v0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$MediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$MediaType;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$MediaType;
    .registers 1

    .line 58
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$MediaType;->$VALUES:[Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$MediaType;

    invoke-virtual {v0}, [Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$MediaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$MediaType;

    return-object v0
.end method
