.class public final enum Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

.field public static final enum LEFT_ANKLE:Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

.field public static final enum LEFT_EAR:Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

.field public static final enum LEFT_ELBOW:Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

.field public static final enum LEFT_EYE:Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

.field public static final enum LEFT_HIP:Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

.field public static final enum LEFT_KNEE:Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

.field public static final enum LEFT_SHOULDER:Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

.field public static final enum LEFT_WRIST:Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

.field public static final enum NOSE:Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

.field public static final enum RIGHT_ANKLE:Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

.field public static final enum RIGHT_EAR:Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

.field public static final enum RIGHT_ELBOW:Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

.field public static final enum RIGHT_EYE:Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

.field public static final enum RIGHT_HIP:Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

.field public static final enum RIGHT_KNEE:Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

.field public static final enum RIGHT_SHOULDER:Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

.field public static final enum RIGHT_WRIST:Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;


# direct methods
.method private static final synthetic $values()[Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;
    .registers 18

    sget-object v1, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;->NOSE:Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

    sget-object v2, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;->LEFT_EYE:Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

    sget-object v3, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;->RIGHT_EYE:Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

    sget-object v4, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;->LEFT_EAR:Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

    sget-object v5, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;->RIGHT_EAR:Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

    sget-object v6, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;->LEFT_SHOULDER:Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

    sget-object v7, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;->RIGHT_SHOULDER:Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

    sget-object v8, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;->LEFT_ELBOW:Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

    sget-object v9, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;->RIGHT_ELBOW:Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

    sget-object v10, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;->LEFT_WRIST:Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

    sget-object v11, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;->RIGHT_WRIST:Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

    sget-object v12, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;->LEFT_HIP:Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

    sget-object v13, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;->RIGHT_HIP:Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

    sget-object v14, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;->LEFT_KNEE:Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

    sget-object v15, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;->RIGHT_KNEE:Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

    sget-object v16, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;->LEFT_ANKLE:Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

    sget-object v17, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;->RIGHT_ANKLE:Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

    filled-new-array/range {v1 .. v17}, [Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 4
    new-instance v0, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

    const-string v1, "NOSE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;->NOSE:Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

    .line 5
    new-instance v0, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

    const-string v1, "LEFT_EYE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;->LEFT_EYE:Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

    .line 6
    new-instance v0, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

    const-string v1, "RIGHT_EYE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;->RIGHT_EYE:Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

    .line 7
    new-instance v0, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

    const-string v1, "LEFT_EAR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;->LEFT_EAR:Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

    .line 8
    new-instance v0, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

    const-string v1, "RIGHT_EAR"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;->RIGHT_EAR:Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

    .line 9
    new-instance v0, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

    const-string v1, "LEFT_SHOULDER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;->LEFT_SHOULDER:Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

    .line 10
    new-instance v0, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

    const-string v1, "RIGHT_SHOULDER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;->RIGHT_SHOULDER:Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

    .line 11
    new-instance v0, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

    const-string v1, "LEFT_ELBOW"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;->LEFT_ELBOW:Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

    .line 12
    new-instance v0, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

    const-string v1, "RIGHT_ELBOW"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;->RIGHT_ELBOW:Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

    .line 13
    new-instance v0, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

    const-string v1, "LEFT_WRIST"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;->LEFT_WRIST:Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

    .line 14
    new-instance v0, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

    const-string v1, "RIGHT_WRIST"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;->RIGHT_WRIST:Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

    .line 15
    new-instance v0, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

    const-string v1, "LEFT_HIP"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;->LEFT_HIP:Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

    .line 16
    new-instance v0, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

    const-string v1, "RIGHT_HIP"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;->RIGHT_HIP:Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

    .line 17
    new-instance v0, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

    const-string v1, "LEFT_KNEE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;->LEFT_KNEE:Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

    .line 18
    new-instance v0, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

    const-string v1, "RIGHT_KNEE"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;->RIGHT_KNEE:Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

    .line 19
    new-instance v0, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

    const-string v1, "LEFT_ANKLE"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;->LEFT_ANKLE:Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

    .line 20
    new-instance v0, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

    const-string v1, "RIGHT_ANKLE"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;->RIGHT_ANKLE:Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

    invoke-static {}, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;->$values()[Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

    move-result-object v0

    sput-object v0, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;->$VALUES:[Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;
    .registers 2

    const-class v0, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 21
    check-cast p0, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

    return-object p0
.end method

.method public static values()[Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;
    .registers 1

    sget-object v0, Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;->$VALUES:[Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 21
    check-cast v0, [Lcom/transsion/aicore/cv/ipc/imageDepth/Landmark;

    return-object v0
.end method
