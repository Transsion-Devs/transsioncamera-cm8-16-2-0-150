.class public final enum Lcom/transsion/camera/utils/SettingInfo$Pattern;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/utils/SettingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Pattern"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/utils/SettingInfo$Pattern;

.field public static final enum BURST:Lcom/transsion/camera/utils/SettingInfo$Pattern;

.field public static final enum CONTINUOUS:Lcom/transsion/camera/utils/SettingInfo$Pattern;

.field public static final enum NORMAL:Lcom/transsion/camera/utils/SettingInfo$Pattern;


# direct methods
.method private static synthetic $values()[Lcom/transsion/camera/utils/SettingInfo$Pattern;
    .registers 3

    .line 3342
    sget-object v0, Lcom/transsion/camera/utils/SettingInfo$Pattern;->NORMAL:Lcom/transsion/camera/utils/SettingInfo$Pattern;

    sget-object v1, Lcom/transsion/camera/utils/SettingInfo$Pattern;->BURST:Lcom/transsion/camera/utils/SettingInfo$Pattern;

    sget-object v2, Lcom/transsion/camera/utils/SettingInfo$Pattern;->CONTINUOUS:Lcom/transsion/camera/utils/SettingInfo$Pattern;

    filled-new-array {v0, v1, v2}, [Lcom/transsion/camera/utils/SettingInfo$Pattern;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 3343
    new-instance v0, Lcom/transsion/camera/utils/SettingInfo$Pattern;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/utils/SettingInfo$Pattern;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/utils/SettingInfo$Pattern;->NORMAL:Lcom/transsion/camera/utils/SettingInfo$Pattern;

    .line 3344
    new-instance v0, Lcom/transsion/camera/utils/SettingInfo$Pattern;

    const-string v1, "BURST"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/utils/SettingInfo$Pattern;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/utils/SettingInfo$Pattern;->BURST:Lcom/transsion/camera/utils/SettingInfo$Pattern;

    .line 3345
    new-instance v0, Lcom/transsion/camera/utils/SettingInfo$Pattern;

    const-string v1, "CONTINUOUS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/utils/SettingInfo$Pattern;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/utils/SettingInfo$Pattern;->CONTINUOUS:Lcom/transsion/camera/utils/SettingInfo$Pattern;

    .line 3342
    invoke-static {}, Lcom/transsion/camera/utils/SettingInfo$Pattern;->$values()[Lcom/transsion/camera/utils/SettingInfo$Pattern;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/utils/SettingInfo$Pattern;->$VALUES:[Lcom/transsion/camera/utils/SettingInfo$Pattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 3342
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/utils/SettingInfo$Pattern;
    .registers 2

    .line 3342
    const-class v0, Lcom/transsion/camera/utils/SettingInfo$Pattern;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/utils/SettingInfo$Pattern;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/utils/SettingInfo$Pattern;
    .registers 1

    .line 3342
    sget-object v0, Lcom/transsion/camera/utils/SettingInfo$Pattern;->$VALUES:[Lcom/transsion/camera/utils/SettingInfo$Pattern;

    invoke-virtual {v0}, [Lcom/transsion/camera/utils/SettingInfo$Pattern;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/utils/SettingInfo$Pattern;

    return-object v0
.end method
