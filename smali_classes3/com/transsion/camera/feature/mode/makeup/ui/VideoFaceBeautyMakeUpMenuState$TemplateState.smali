.class public final enum Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TemplateState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;

.field public static final enum COLLAPSE_SCROLLER_BAR:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;

.field public static final enum EXPAND_SCROLLER_BAR:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;

.field public static final enum NO_EFFECT:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;


# instance fields
.field private final state:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;


# direct methods
.method private static synthetic $values()[Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;
    .registers 3

    .line 48
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;->NO_EFFECT:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;

    sget-object v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;->EXPAND_SCROLLER_BAR:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;

    sget-object v2, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;->COLLAPSE_SCROLLER_BAR:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;

    filled-new-array {v0, v1, v2}, [Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 49
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;

    const-string v1, "NO_EFFECT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;->NO_EFFECT:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;

    .line 50
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;

    const-string v1, "EXPAND_SCROLLER_BAR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;->EXPAND_SCROLLER_BAR:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;

    .line 51
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;

    const-string v1, "COLLAPSE_SCROLLER_BAR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;->COLLAPSE_SCROLLER_BAR:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;

    .line 48
    invoke-static {}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;->$values()[Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;->$VALUES:[Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 56
    new-instance p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;

    invoke-direct {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;->state:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;
    .registers 2

    .line 48
    const-class v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;
    .registers 1

    .line 48
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;->$VALUES:[Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;

    invoke-virtual {v0}, [Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;

    return-object v0
.end method


# virtual methods
.method public getState()Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState$TemplateState;->state:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeUpMenuState;

    return-object p0
.end method
