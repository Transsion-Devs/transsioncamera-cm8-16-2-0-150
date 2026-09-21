.class public final enum Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/setting/ICameraSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SettingType"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

.field public static final enum PHOTO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

.field public static final enum PHOTO_AND_VIDEO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

.field public static final enum VIDEO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;


# direct methods
.method private static synthetic $values()[Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .registers 3

    .line 78
    sget-object v0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    sget-object v1, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->VIDEO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    sget-object v2, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO_AND_VIDEO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    filled-new-array {v0, v1, v2}, [Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 79
    new-instance v0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    const-string v1, "PHOTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    .line 80
    new-instance v0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    const-string v1, "VIDEO"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->VIDEO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    .line 81
    new-instance v0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    const-string v1, "PHOTO_AND_VIDEO"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->PHOTO_AND_VIDEO:Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    .line 78
    invoke-static {}, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->$values()[Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->$VALUES:[Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .registers 2

    .line 78
    const-class v0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    .registers 1

    .line 78
    sget-object v0, Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->$VALUES:[Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    invoke-virtual {v0}, [Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;

    return-object v0
.end method
