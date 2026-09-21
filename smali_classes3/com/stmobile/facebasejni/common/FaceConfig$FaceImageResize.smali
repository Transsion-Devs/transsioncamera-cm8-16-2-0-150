.class public final enum Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stmobile/facebasejni/common/FaceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FaceImageResize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;

.field public static final enum DEFAULT_CONFIG:Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;

.field public static final enum RESIZE_1080W:Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;

.field public static final enum RESIZE_1280W:Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;

.field public static final enum RESIZE_320W:Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;

.field public static final enum RESIZE_480W:Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;

.field public static final enum RESIZE_640W:Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;

.field public static final enum RESIZE_720W:Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;

.field public static final enum RESIZE_960W:Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;


# instance fields
.field final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 9
    new-instance v0, Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;

    const-string v1, "DEFAULT_CONFIG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;->DEFAULT_CONFIG:Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;

    .line 10
    new-instance v1, Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;

    const-string v2, "RESIZE_320W"

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;->RESIZE_320W:Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;

    .line 11
    new-instance v2, Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;

    const-string v3, "RESIZE_480W"

    const/4 v5, 0x4

    invoke-direct {v2, v3, v4, v5}, Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;->RESIZE_480W:Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;

    .line 12
    new-instance v3, Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;

    const/4 v4, 0x3

    const/16 v6, 0x8

    const-string v7, "RESIZE_640W"

    invoke-direct {v3, v7, v4, v6}, Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;->RESIZE_640W:Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;

    .line 13
    new-instance v4, Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;

    const-string v6, "RESIZE_720W"

    const/16 v7, 0x10

    invoke-direct {v4, v6, v5, v7}, Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;->RESIZE_720W:Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;

    .line 14
    new-instance v5, Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;

    const/4 v6, 0x5

    const/16 v7, 0x20

    const-string v8, "RESIZE_960W"

    invoke-direct {v5, v8, v6, v7}, Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;->RESIZE_960W:Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;

    .line 15
    new-instance v6, Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;

    const/4 v7, 0x6

    const/16 v8, 0x40

    const-string v9, "RESIZE_1080W"

    invoke-direct {v6, v9, v7, v8}, Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;->RESIZE_1080W:Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;

    .line 16
    new-instance v7, Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;

    const/4 v8, 0x7

    const/16 v9, 0x80

    const-string v10, "RESIZE_1280W"

    invoke-direct {v7, v10, v8, v9}, Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;->RESIZE_1280W:Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;

    .line 7
    filled-new-array/range {v0 .. v7}, [Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;

    move-result-object v0

    sput-object v0, Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;->$VALUES:[Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput p3, p0, Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;
    .registers 2

    .line 7
    const-class v0, Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;

    return-object p0
.end method

.method public static values()[Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;
    .registers 1

    .line 7
    sget-object v0, Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;->$VALUES:[Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;

    invoke-virtual {v0}, [Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 25
    iget p0, p0, Lcom/stmobile/facebasejni/common/FaceConfig$FaceImageResize;->value:I

    return p0
.end method
