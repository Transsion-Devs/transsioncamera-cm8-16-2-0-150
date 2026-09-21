.class public final enum Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam$SourceType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SourceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam$SourceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam$SourceType;

.field public static final enum COLOR:Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam$SourceType;

.field public static final enum GRADIENT_COLOR:Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam$SourceType;

.field public static final enum IMAGE:Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam$SourceType;

.field public static final enum VIDEOFRAME:Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam$SourceType;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 26
    new-instance v0, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam$SourceType;

    const-string v1, "COLOR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam$SourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam$SourceType;->COLOR:Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam$SourceType;

    .line 31
    new-instance v1, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam$SourceType;

    const-string v2, "VIDEOFRAME"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam$SourceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam$SourceType;->VIDEOFRAME:Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam$SourceType;

    .line 36
    new-instance v2, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam$SourceType;

    const-string v3, "IMAGE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam$SourceType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam$SourceType;->IMAGE:Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam$SourceType;

    .line 41
    new-instance v3, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam$SourceType;

    const-string v4, "GRADIENT_COLOR"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam$SourceType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam$SourceType;->GRADIENT_COLOR:Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam$SourceType;

    .line 21
    filled-new-array {v0, v1, v2, v3}, [Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam$SourceType;

    move-result-object v0

    sput-object v0, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam$SourceType;->$VALUES:[Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam$SourceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam$SourceType;
    .registers 2

    .line 21
    const-class v0, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam$SourceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam$SourceType;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam$SourceType;
    .registers 1

    .line 21
    sget-object v0, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam$SourceType;->$VALUES:[Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam$SourceType;

    invoke-virtual {v0}, [Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam$SourceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam$SourceType;

    return-object v0
.end method
