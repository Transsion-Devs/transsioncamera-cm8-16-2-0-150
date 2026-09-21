.class public final enum Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Skeleton3DParamType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;

.field public static final enum BEF_SELETON3D_CHECKROOTINVERSE:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;

.field public static final enum BEF_SELETON3D_CHECKWRISTROT:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;

.field public static final enum BEF_SELETON3D_FITTINGENABLE:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;

.field public static final enum BEF_SELETON3D_FITTINGROOTENABLE:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;

.field public static final enum BEF_SELETON3D_HANDPROBTHRES:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;

.field public static final enum BEF_SELETON3D_HSWRISTSCORETHRES:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;

.field public static final enum BEF_SELETON3D_MAXTARGETNUM:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;

.field public static final enum BEF_SELETON3D_SMOOTHORIGINSIGMAXY:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;

.field public static final enum BEF_SELETON3D_SMOOTHORIGINSIGMAZ:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;

.field public static final enum BEF_SELETON3D_SMOOTHSIGMABETAS:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;

.field public static final enum BEF_SELETON3D_SMOOTHWINSIZE:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;

.field public static final enum BEF_SELETON3D_TARGETSPEFRAME:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;

.field public static final enum BEF_SELETON3D_TASKPERTICK:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;

.field public static final enum BEF_SELETON3D_WHOLEBODY:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;

.field public static final enum BEF_SELETON3D_WITHHANDS:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;

.field public static final enum BEF_SELETON3D_WITHWRISTOFFSET:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;

.field public static final enum BEF_SELETON3D_WRISTSCORETHRES:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 19

    .line 1528
    new-instance v1, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;

    const-string v0, "BEF_SELETON3D_WHOLEBODY"

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v2}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;->BEF_SELETON3D_WHOLEBODY:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;

    .line 1529
    new-instance v2, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;

    const-string v0, "BEF_SELETON3D_WITHHANDS"

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3, v3}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;->BEF_SELETON3D_WITHHANDS:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;

    .line 1530
    new-instance v3, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;

    const-string v0, "BEF_SELETON3D_MAXTARGETNUM"

    const/4 v4, 0x2

    invoke-direct {v3, v0, v4, v4}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;->BEF_SELETON3D_MAXTARGETNUM:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;

    .line 1531
    new-instance v4, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;

    const-string v0, "BEF_SELETON3D_TARGETSPEFRAME"

    const/4 v5, 0x3

    invoke-direct {v4, v0, v5, v5}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;->BEF_SELETON3D_TARGETSPEFRAME:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;

    .line 1532
    new-instance v5, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;

    const-string v0, "BEF_SELETON3D_WRISTSCORETHRES"

    const/4 v6, 0x4

    invoke-direct {v5, v0, v6, v6}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;->BEF_SELETON3D_WRISTSCORETHRES:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;

    .line 1533
    new-instance v6, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;

    const-string v0, "BEF_SELETON3D_HSWRISTSCORETHRES"

    const/4 v7, 0x5

    invoke-direct {v6, v0, v7, v7}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;->BEF_SELETON3D_HSWRISTSCORETHRES:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;

    .line 1534
    new-instance v7, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;

    const-string v0, "BEF_SELETON3D_CHECKROOTINVERSE"

    const/4 v8, 0x6

    invoke-direct {v7, v0, v8, v8}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;->BEF_SELETON3D_CHECKROOTINVERSE:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;

    .line 1535
    new-instance v8, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;

    const-string v0, "BEF_SELETON3D_TASKPERTICK"

    const/4 v9, 0x7

    invoke-direct {v8, v0, v9, v9}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;->BEF_SELETON3D_TASKPERTICK:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;

    .line 1536
    new-instance v9, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;

    const-string v0, "BEF_SELETON3D_SMOOTHWINSIZE"

    const/16 v10, 0x8

    invoke-direct {v9, v0, v10, v10}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;->BEF_SELETON3D_SMOOTHWINSIZE:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;

    .line 1537
    new-instance v10, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;

    const-string v0, "BEF_SELETON3D_SMOOTHORIGINSIGMAXY"

    const/16 v11, 0x9

    invoke-direct {v10, v0, v11, v11}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;->BEF_SELETON3D_SMOOTHORIGINSIGMAXY:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;

    .line 1538
    new-instance v11, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;

    const-string v0, "BEF_SELETON3D_SMOOTHORIGINSIGMAZ"

    const/16 v12, 0xa

    invoke-direct {v11, v0, v12, v12}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;->BEF_SELETON3D_SMOOTHORIGINSIGMAZ:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;

    .line 1539
    new-instance v12, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;

    const-string v0, "BEF_SELETON3D_WITHWRISTOFFSET"

    const/16 v13, 0xb

    invoke-direct {v12, v0, v13, v13}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;->BEF_SELETON3D_WITHWRISTOFFSET:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;

    .line 1540
    new-instance v13, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;

    const-string v0, "BEF_SELETON3D_HANDPROBTHRES"

    const/16 v14, 0xc

    invoke-direct {v13, v0, v14, v14}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;->BEF_SELETON3D_HANDPROBTHRES:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;

    .line 1541
    new-instance v14, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;

    const-string v0, "BEF_SELETON3D_CHECKWRISTROT"

    const/16 v15, 0xd

    invoke-direct {v14, v0, v15, v15}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;->BEF_SELETON3D_CHECKWRISTROT:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;

    .line 1542
    new-instance v15, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;

    const-string v0, "BEF_SELETON3D_SMOOTHSIGMABETAS"

    move-object/from16 v16, v1

    const/16 v1, 0xe

    invoke-direct {v15, v0, v1, v1}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;->BEF_SELETON3D_SMOOTHSIGMABETAS:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;

    .line 1543
    new-instance v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;

    const-string v1, "BEF_SELETON3D_FITTINGENABLE"

    move-object/from16 v17, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v2}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;->BEF_SELETON3D_FITTINGENABLE:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;

    .line 1544
    new-instance v1, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;

    const-string v2, "BEF_SELETON3D_FITTINGROOTENABLE"

    move-object/from16 v18, v0

    const/16 v0, 0x10

    invoke-direct {v1, v2, v0, v0}, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;->BEF_SELETON3D_FITTINGROOTENABLE:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;

    move-object/from16 v2, v17

    move-object/from16 v17, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v18

    .line 1527
    filled-new-array/range {v1 .. v17}, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;

    move-result-object v0

    sput-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;->$VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1549
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1550
    iput p3, p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;
    .registers 2

    .line 1527
    const-class v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;

    return-object p0
.end method

.method public static values()[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;
    .registers 1

    .line 1527
    sget-object v0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;->$VALUES:[Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;

    invoke-virtual {v0}, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 1547
    iget p0, p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$Skeleton3DParamType;->value:I

    return p0
.end method
