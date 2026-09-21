.class public final enum Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WideCameraItemType"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;

.field public static final enum TYPE_IMAGE:Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;

.field public static final enum TYPE_TEXT:Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;


# direct methods
.method private static synthetic $values()[Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;
    .registers 2

    .line 14
    sget-object v0, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;->TYPE_TEXT:Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;

    sget-object v1, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;->TYPE_IMAGE:Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;

    filled-new-array {v0, v1}, [Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 15
    new-instance v0, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;

    const-string v1, "TYPE_TEXT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;->TYPE_TEXT:Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;

    .line 16
    new-instance v0, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;

    const-string v1, "TYPE_IMAGE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;->TYPE_IMAGE:Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;

    .line 14
    invoke-static {}, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;->$values()[Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;->$VALUES:[Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;
    .registers 2

    .line 14
    const-class v0, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;
    .registers 1

    .line 14
    sget-object v0, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;->$VALUES:[Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;

    invoke-virtual {v0}, [Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;

    return-object v0
.end method
