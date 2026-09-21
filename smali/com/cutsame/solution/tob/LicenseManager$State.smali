.class public final enum Lcom/cutsame/solution/tob/LicenseManager$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cutsame/solution/tob/LicenseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cutsame/solution/tob/LicenseManager$State$Companion;
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/cutsame/solution/tob/LicenseManager$State;

.field public static final Companion:Lcom/cutsame/solution/tob/LicenseManager$State$Companion;

.field public static final enum FILE_ERROR:Lcom/cutsame/solution/tob/LicenseManager$State;

.field public static final enum INIT_LICENSE_INFO_ERROR:Lcom/cutsame/solution/tob/LicenseManager$State;

.field public static final enum INVALID_APPID:Lcom/cutsame/solution/tob/LicenseManager$State;

.field public static final enum INVALID_BLOCK_COUNT:Lcom/cutsame/solution/tob/LicenseManager$State;

.field public static final enum INVALID_FUNCNAME:Lcom/cutsame/solution/tob/LicenseManager$State;

.field public static final enum INVALID_PATH:Lcom/cutsame/solution/tob/LicenseManager$State;

.field public static final enum INVALID_VERSIONS:Lcom/cutsame/solution/tob/LicenseManager$State;

.field public static final enum LICENSE_NO_FUNC:Lcom/cutsame/solution/tob/LicenseManager$State;

.field public static final enum LICENSE_STATUS_EXPIRED:Lcom/cutsame/solution/tob/LicenseManager$State;

.field public static final enum LICENSE_STATUS_ID_NOT_MATCH:Lcom/cutsame/solution/tob/LicenseManager$State;

.field public static final enum LICENSE_STATUS_INVALID:Lcom/cutsame/solution/tob/LicenseManager$State;

.field public static final enum LICENSE_STATUS_NO_MATCH:Lcom/cutsame/solution/tob/LicenseManager$State;

.field public static final enum SUCCESS:Lcom/cutsame/solution/tob/LicenseManager$State;

.field public static final enum TYPE_NOT_MATCH:Lcom/cutsame/solution/tob/LicenseManager$State;

.field public static final enum UN_KNOW_ERROR:Lcom/cutsame/solution/tob/LicenseManager$State;


# instance fields
.field public a:I


# direct methods
.method public static constructor <clinit>()V
    .registers 17

    .line 1
    new-instance v0, Lcom/cutsame/solution/tob/LicenseManager$State;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/cutsame/solution/tob/LicenseManager$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cutsame/solution/tob/LicenseManager$State;->SUCCESS:Lcom/cutsame/solution/tob/LicenseManager$State;

    new-instance v1, Lcom/cutsame/solution/tob/LicenseManager$State;

    const-string v2, "INVALID_FUNCNAME"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/cutsame/solution/tob/LicenseManager$State;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/cutsame/solution/tob/LicenseManager$State;->INVALID_FUNCNAME:Lcom/cutsame/solution/tob/LicenseManager$State;

    new-instance v2, Lcom/cutsame/solution/tob/LicenseManager$State;

    const-string v3, "INVALID_PATH"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/cutsame/solution/tob/LicenseManager$State;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/cutsame/solution/tob/LicenseManager$State;->INVALID_PATH:Lcom/cutsame/solution/tob/LicenseManager$State;

    new-instance v3, Lcom/cutsame/solution/tob/LicenseManager$State;

    const-string v4, "INVALID_APPID"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/cutsame/solution/tob/LicenseManager$State;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/cutsame/solution/tob/LicenseManager$State;->INVALID_APPID:Lcom/cutsame/solution/tob/LicenseManager$State;

    new-instance v4, Lcom/cutsame/solution/tob/LicenseManager$State;

    const-string v5, "FILE_ERROR"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/cutsame/solution/tob/LicenseManager$State;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/cutsame/solution/tob/LicenseManager$State;->FILE_ERROR:Lcom/cutsame/solution/tob/LicenseManager$State;

    new-instance v5, Lcom/cutsame/solution/tob/LicenseManager$State;

    const-string v6, "TYPE_NOT_MATCH"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lcom/cutsame/solution/tob/LicenseManager$State;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/cutsame/solution/tob/LicenseManager$State;->TYPE_NOT_MATCH:Lcom/cutsame/solution/tob/LicenseManager$State;

    .line 4
    new-instance v6, Lcom/cutsame/solution/tob/LicenseManager$State;

    const-string v7, "INVALID_VERSIONS"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lcom/cutsame/solution/tob/LicenseManager$State;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/cutsame/solution/tob/LicenseManager$State;->INVALID_VERSIONS:Lcom/cutsame/solution/tob/LicenseManager$State;

    new-instance v7, Lcom/cutsame/solution/tob/LicenseManager$State;

    const-string v8, "INVALID_BLOCK_COUNT"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9, v9}, Lcom/cutsame/solution/tob/LicenseManager$State;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/cutsame/solution/tob/LicenseManager$State;->INVALID_BLOCK_COUNT:Lcom/cutsame/solution/tob/LicenseManager$State;

    new-instance v8, Lcom/cutsame/solution/tob/LicenseManager$State;

    const-string v9, "LICENSE_STATUS_INVALID"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10, v10}, Lcom/cutsame/solution/tob/LicenseManager$State;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/cutsame/solution/tob/LicenseManager$State;->LICENSE_STATUS_INVALID:Lcom/cutsame/solution/tob/LicenseManager$State;

    new-instance v9, Lcom/cutsame/solution/tob/LicenseManager$State;

    const-string v10, "LICENSE_STATUS_EXPIRED"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11, v11}, Lcom/cutsame/solution/tob/LicenseManager$State;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/cutsame/solution/tob/LicenseManager$State;->LICENSE_STATUS_EXPIRED:Lcom/cutsame/solution/tob/LicenseManager$State;

    .line 7
    new-instance v10, Lcom/cutsame/solution/tob/LicenseManager$State;

    const-string v11, "LICENSE_NO_FUNC"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12, v12}, Lcom/cutsame/solution/tob/LicenseManager$State;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/cutsame/solution/tob/LicenseManager$State;->LICENSE_NO_FUNC:Lcom/cutsame/solution/tob/LicenseManager$State;

    new-instance v11, Lcom/cutsame/solution/tob/LicenseManager$State;

    const-string v12, "LICENSE_STATUS_NO_MATCH"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13, v13}, Lcom/cutsame/solution/tob/LicenseManager$State;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/cutsame/solution/tob/LicenseManager$State;->LICENSE_STATUS_NO_MATCH:Lcom/cutsame/solution/tob/LicenseManager$State;

    new-instance v12, Lcom/cutsame/solution/tob/LicenseManager$State;

    const-string v13, "LICENSE_STATUS_ID_NOT_MATCH"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14, v14}, Lcom/cutsame/solution/tob/LicenseManager$State;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/cutsame/solution/tob/LicenseManager$State;->LICENSE_STATUS_ID_NOT_MATCH:Lcom/cutsame/solution/tob/LicenseManager$State;

    new-instance v13, Lcom/cutsame/solution/tob/LicenseManager$State;

    const-string v14, "UN_KNOW_ERROR"

    const/16 v15, 0xd

    invoke-direct {v13, v14, v15, v15}, Lcom/cutsame/solution/tob/LicenseManager$State;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/cutsame/solution/tob/LicenseManager$State;->UN_KNOW_ERROR:Lcom/cutsame/solution/tob/LicenseManager$State;

    .line 10
    new-instance v14, Lcom/cutsame/solution/tob/LicenseManager$State;

    const-string v15, "INIT_LICENSE_INFO_ERROR"

    move-object/from16 v16, v0

    const/16 v0, 0xe

    invoke-direct {v14, v15, v0, v0}, Lcom/cutsame/solution/tob/LicenseManager$State;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/cutsame/solution/tob/LicenseManager$State;->INIT_LICENSE_INFO_ERROR:Lcom/cutsame/solution/tob/LicenseManager$State;

    move-object/from16 v0, v16

    .line 11
    filled-new-array/range {v0 .. v14}, [Lcom/cutsame/solution/tob/LicenseManager$State;

    move-result-object v0

    .line 12
    sput-object v0, Lcom/cutsame/solution/tob/LicenseManager$State;->$VALUES:[Lcom/cutsame/solution/tob/LicenseManager$State;

    new-instance v0, Lcom/cutsame/solution/tob/LicenseManager$State$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cutsame/solution/tob/LicenseManager$State$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cutsame/solution/tob/LicenseManager$State;->Companion:Lcom/cutsame/solution/tob/LicenseManager$State$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput p3, p0, Lcom/cutsame/solution/tob/LicenseManager$State;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cutsame/solution/tob/LicenseManager$State;
    .registers 2

    const-class v0, Lcom/cutsame/solution/tob/LicenseManager$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cutsame/solution/tob/LicenseManager$State;

    return-object p0
.end method

.method public static values()[Lcom/cutsame/solution/tob/LicenseManager$State;
    .registers 1

    sget-object v0, Lcom/cutsame/solution/tob/LicenseManager$State;->$VALUES:[Lcom/cutsame/solution/tob/LicenseManager$State;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cutsame/solution/tob/LicenseManager$State;

    return-object v0
.end method


# virtual methods
.method public final value()I
    .registers 1

    .line 1
    iget p0, p0, Lcom/cutsame/solution/tob/LicenseManager$State;->a:I

    return p0
.end method
