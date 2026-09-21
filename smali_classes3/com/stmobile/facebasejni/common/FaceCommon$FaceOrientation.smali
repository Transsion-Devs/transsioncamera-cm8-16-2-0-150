.class public final enum Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stmobile/facebasejni/common/FaceCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FaceOrientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;

.field public static final enum DOWN:Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;

.field public static final enum LEFT:Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;

.field public static final enum RIGHT:Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;

.field public static final enum UNKNOWN:Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;

.field public static final enum UP:Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;


# instance fields
.field final nativeInt:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 5
    new-instance v0, Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;

    const-string v1, "UP"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;->UP:Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;

    .line 6
    new-instance v1, Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;

    const-string v2, "LEFT"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;->LEFT:Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;

    .line 7
    new-instance v2, Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;

    const-string v3, "DOWN"

    const/4 v5, 0x4

    invoke-direct {v2, v3, v4, v5}, Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;->DOWN:Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;

    .line 8
    new-instance v3, Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;

    const/4 v4, 0x3

    const/16 v6, 0x8

    const-string v7, "RIGHT"

    invoke-direct {v3, v7, v4, v6}, Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;->RIGHT:Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;

    .line 9
    new-instance v4, Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;

    const-string v6, "UNKNOWN"

    const/16 v7, 0xf

    invoke-direct {v4, v6, v5, v7}, Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;->UNKNOWN:Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;

    .line 4
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;

    move-result-object v0

    sput-object v0, Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;->$VALUES:[Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput p3, p0, Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;->nativeInt:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;
    .registers 2

    .line 4
    const-class v0, Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;

    return-object p0
.end method

.method public static values()[Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;
    .registers 1

    .line 4
    sget-object v0, Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;->$VALUES:[Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;

    invoke-virtual {v0}, [Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 18
    iget p0, p0, Lcom/stmobile/facebasejni/common/FaceCommon$FaceOrientation;->nativeInt:I

    return p0
.end method
