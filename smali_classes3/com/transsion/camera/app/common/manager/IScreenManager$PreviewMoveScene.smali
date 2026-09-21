.class public final enum Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/manager/IScreenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PreviewMoveScene"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

.field public static final enum PREVIEW_MOVE_SCENE_BY_MENU_FIRST_1_1:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

.field public static final enum PREVIEW_MOVE_SCENE_BY_MENU_FIRST_4_3:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

.field public static final enum PREVIEW_MOVE_SCENE_BY_MENU_SECOND_1_1:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

.field public static final enum PREVIEW_MOVE_SCENE_BY_POP:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

.field public static final enum PREVIEW_MOVE_SCENE_INVALID:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;


# direct methods
.method private static synthetic $values()[Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;
    .registers 5

    .line 50
    sget-object v0, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;->PREVIEW_MOVE_SCENE_INVALID:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    sget-object v1, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;->PREVIEW_MOVE_SCENE_BY_POP:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    sget-object v2, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;->PREVIEW_MOVE_SCENE_BY_MENU_FIRST_4_3:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    sget-object v3, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;->PREVIEW_MOVE_SCENE_BY_MENU_FIRST_1_1:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    sget-object v4, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;->PREVIEW_MOVE_SCENE_BY_MENU_SECOND_1_1:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 51
    new-instance v0, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    const-string v1, "PREVIEW_MOVE_SCENE_INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;->PREVIEW_MOVE_SCENE_INVALID:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    .line 52
    new-instance v0, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    const-string v1, "PREVIEW_MOVE_SCENE_BY_POP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;->PREVIEW_MOVE_SCENE_BY_POP:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    .line 53
    new-instance v0, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    const-string v1, "PREVIEW_MOVE_SCENE_BY_MENU_FIRST_4_3"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;->PREVIEW_MOVE_SCENE_BY_MENU_FIRST_4_3:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    .line 54
    new-instance v0, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    const-string v1, "PREVIEW_MOVE_SCENE_BY_MENU_FIRST_1_1"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;->PREVIEW_MOVE_SCENE_BY_MENU_FIRST_1_1:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    .line 55
    new-instance v0, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    const-string v1, "PREVIEW_MOVE_SCENE_BY_MENU_SECOND_1_1"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;->PREVIEW_MOVE_SCENE_BY_MENU_SECOND_1_1:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    .line 50
    invoke-static {}, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;->$values()[Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;->$VALUES:[Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;
    .registers 2

    .line 50
    const-class v0, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;
    .registers 1

    .line 50
    sget-object v0, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;->$VALUES:[Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    invoke-virtual {v0}, [Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    return-object v0
.end method
