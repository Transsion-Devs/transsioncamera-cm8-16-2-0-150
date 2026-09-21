.class Lcom/transsion/camera/app/ui/PreviewStyle$ModeTypeVideo;
.super Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/PreviewStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeTypeVideo"
.end annotation


# instance fields
.field private final DEFAULT_STYLE:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/PreviewStyle;)V
    .registers 4

    .line 411
    const-string v0, "mode_type_video"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;-><init>(Lcom/transsion/camera/app/ui/PreviewStyle;Ljava/lang/String;Lcom/transsion/camera/app/ui/PreviewStyle-IA;)V

    .line 412
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->mHeightFullStyle:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/PreviewStyle$ModeTypeVideo;->DEFAULT_STYLE:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/PreviewStyle;Lcom/transsion/camera/app/ui/PreviewStyle-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PreviewStyle$ModeTypeVideo;-><init>(Lcom/transsion/camera/app/ui/PreviewStyle;)V

    return-void
.end method


# virtual methods
.method defaultStyle()Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;
    .registers 1

    .line 417
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$ModeTypeVideo;->DEFAULT_STYLE:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;

    return-object p0
.end method
