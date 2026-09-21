.class public final enum Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

.field public static final enum STATE_PAUSE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

.field public static final enum STATE_PREVIEW:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

.field public static final enum STATE_PRE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

.field public static final enum STATE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

.field public static final enum STATE_RESUME_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

.field public static final enum STATE_SAVING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;


# direct methods
.method private static synthetic $values()[Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;
    .registers 6

    .line 20
    sget-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PREVIEW:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    sget-object v1, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    sget-object v2, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PRE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    sget-object v3, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PAUSE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    sget-object v4, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_RESUME_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    sget-object v5, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_SAVING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    filled-new-array/range {v0 .. v5}, [Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 24
    new-instance v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    const-string v1, "STATE_PREVIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PREVIEW:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    .line 29
    new-instance v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    const-string v1, "STATE_RECORDING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    .line 33
    new-instance v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    const-string v1, "STATE_PRE_RECORDING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PRE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    .line 37
    new-instance v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    const-string v1, "STATE_PAUSE_RECORDING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PAUSE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    .line 41
    new-instance v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    const-string v1, "STATE_RESUME_RECORDING"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_RESUME_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    .line 45
    new-instance v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    const-string v1, "STATE_SAVING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_SAVING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    .line 20
    invoke-static {}, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->$values()[Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->$VALUES:[Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;
    .registers 2

    .line 20
    const-class v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;
    .registers 1

    .line 20
    sget-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->$VALUES:[Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-virtual {v0}, [Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    return-object v0
.end method
