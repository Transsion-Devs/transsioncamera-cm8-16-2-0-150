.class public final enum Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TemplateState"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;

.field public static final enum COLLAPSE_SCROLLER_BAR:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;

.field public static final enum EXPAND_SCROLLER_BAR:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;

.field public static final enum NO_EFFECT:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;


# instance fields
.field private final state:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;


# direct methods
.method private static synthetic $values()[Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;
    .registers 3

    .line 32
    sget-object v0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;->NO_EFFECT:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;

    sget-object v1, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;->EXPAND_SCROLLER_BAR:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;

    sget-object v2, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;->COLLAPSE_SCROLLER_BAR:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;

    filled-new-array {v0, v1, v2}, [Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 33
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;

    const-string v1, "NO_EFFECT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;->NO_EFFECT:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;

    .line 34
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;

    const-string v1, "EXPAND_SCROLLER_BAR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;->EXPAND_SCROLLER_BAR:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;

    .line 35
    new-instance v0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;

    const-string v1, "COLLAPSE_SCROLLER_BAR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;->COLLAPSE_SCROLLER_BAR:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;

    .line 32
    invoke-static {}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;->$values()[Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;->$VALUES:[Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    new-instance p1, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;

    invoke-direct {p1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;->state:Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;
    .registers 2

    .line 32
    const-class v0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;
    .registers 1

    .line 32
    sget-object v0, Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;->$VALUES:[Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;

    invoke-virtual {v0}, [Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/ui/setting/videosightshock/VideoSightShockMenuState$TemplateState;

    return-object v0
.end method
