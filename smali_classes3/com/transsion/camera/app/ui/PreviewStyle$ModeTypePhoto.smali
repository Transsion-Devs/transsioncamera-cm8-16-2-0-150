.class Lcom/transsion/camera/app/ui/PreviewStyle$ModeTypePhoto;
.super Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/PreviewStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeTypePhoto"
.end annotation


# instance fields
.field private final DEFAULT_STYLE:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/PreviewStyle;)V
    .registers 4

    .line 391
    const-string v0, "mode_type_photo"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;-><init>(Lcom/transsion/camera/app/ui/PreviewStyle;Ljava/lang/String;Lcom/transsion/camera/app/ui/PreviewStyle-IA;)V

    .line 392
    invoke-static {p1}, Lcom/transsion/camera/app/ui/PreviewStyle;->-$$Nest$fgetmScreenManager(Lcom/transsion/camera/app/ui/PreviewStyle;)Lcom/transsion/camera/app/ui/ScreenManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result p1

    const/4 v0, 0x7

    if-ne v0, p1, :cond_16

    .line 393
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->mHeightFullStyle:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/PreviewStyle$ModeTypePhoto;->DEFAULT_STYLE:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;

    return-void

    .line 395
    :cond_16
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->mWidthFullStyle:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/PreviewStyle$ModeTypePhoto;->DEFAULT_STYLE:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/PreviewStyle;Lcom/transsion/camera/app/ui/PreviewStyle-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PreviewStyle$ModeTypePhoto;-><init>(Lcom/transsion/camera/app/ui/PreviewStyle;)V

    return-void
.end method


# virtual methods
.method defaultStyle()Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;
    .registers 1

    .line 401
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$ModeTypePhoto;->DEFAULT_STYLE:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;

    return-object p0
.end method
