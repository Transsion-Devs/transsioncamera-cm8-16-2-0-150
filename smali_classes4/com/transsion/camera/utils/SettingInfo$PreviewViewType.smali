.class public final enum Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/utils/SettingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PreviewViewType"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

.field public static final enum GL_SURFACE_VIEW:Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

.field public static final enum SURFACE_VIEW:Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;


# direct methods
.method private static synthetic $values()[Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;
    .registers 2

    .line 3104
    sget-object v0, Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;->SURFACE_VIEW:Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

    sget-object v1, Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;->GL_SURFACE_VIEW:Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

    filled-new-array {v0, v1}, [Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 3105
    new-instance v0, Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

    const-string v1, "SURFACE_VIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;->SURFACE_VIEW:Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

    .line 3106
    new-instance v0, Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

    const-string v1, "GL_SURFACE_VIEW"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;->GL_SURFACE_VIEW:Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

    .line 3104
    invoke-static {}, Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;->$values()[Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;->$VALUES:[Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 3104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;
    .registers 2

    .line 3104
    const-class v0, Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;
    .registers 1

    .line 3104
    sget-object v0, Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;->$VALUES:[Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

    invoke-virtual {v0}, [Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/utils/SettingInfo$PreviewViewType;

    return-object v0
.end method
