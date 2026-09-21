.class public final enum Lcom/tetras/util/HandOrientation;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tetras/util/HandOrientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tetras/util/HandOrientation;

.field public static final enum DOWN:Lcom/tetras/util/HandOrientation;

.field public static final enum LEFT:Lcom/tetras/util/HandOrientation;

.field public static final enum RIGHT:Lcom/tetras/util/HandOrientation;

.field public static final enum UP:Lcom/tetras/util/HandOrientation;


# instance fields
.field final nativeInt:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 5
    new-instance v0, Lcom/tetras/util/HandOrientation;

    const-string v1, "UP"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/tetras/util/HandOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tetras/util/HandOrientation;->UP:Lcom/tetras/util/HandOrientation;

    .line 6
    new-instance v1, Lcom/tetras/util/HandOrientation;

    const-string v2, "LEFT"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/tetras/util/HandOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tetras/util/HandOrientation;->LEFT:Lcom/tetras/util/HandOrientation;

    .line 7
    new-instance v2, Lcom/tetras/util/HandOrientation;

    const-string v3, "DOWN"

    const/4 v5, 0x4

    invoke-direct {v2, v3, v4, v5}, Lcom/tetras/util/HandOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/tetras/util/HandOrientation;->DOWN:Lcom/tetras/util/HandOrientation;

    .line 8
    new-instance v3, Lcom/tetras/util/HandOrientation;

    const/4 v4, 0x3

    const/16 v5, 0x8

    const-string v6, "RIGHT"

    invoke-direct {v3, v6, v4, v5}, Lcom/tetras/util/HandOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/tetras/util/HandOrientation;->RIGHT:Lcom/tetras/util/HandOrientation;

    .line 3
    filled-new-array {v0, v1, v2, v3}, [Lcom/tetras/util/HandOrientation;

    move-result-object v0

    sput-object v0, Lcom/tetras/util/HandOrientation;->$VALUES:[Lcom/tetras/util/HandOrientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput p3, p0, Lcom/tetras/util/HandOrientation;->nativeInt:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tetras/util/HandOrientation;
    .registers 2

    .line 3
    const-class v0, Lcom/tetras/util/HandOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tetras/util/HandOrientation;

    return-object p0
.end method

.method public static values()[Lcom/tetras/util/HandOrientation;
    .registers 1

    .line 3
    sget-object v0, Lcom/tetras/util/HandOrientation;->$VALUES:[Lcom/tetras/util/HandOrientation;

    invoke-virtual {v0}, [Lcom/tetras/util/HandOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tetras/util/HandOrientation;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 17
    iget p0, p0, Lcom/tetras/util/HandOrientation;->nativeInt:I

    return p0
.end method
