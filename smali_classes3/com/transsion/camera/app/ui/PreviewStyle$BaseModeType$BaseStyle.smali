.class public abstract Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "BaseStyle"
.end annotation


# instance fields
.field protected final mStyle:Ljava/lang/String;

.field final synthetic this$1:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;


# direct methods
.method static bridge synthetic -$$Nest$mstyle(Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;)Lcom/transsion/camera/app/ui/PreviewStyle$Style;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->style()Lcom/transsion/camera/app/ui/PreviewStyle$Style;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>(Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;Ljava/lang/String;)V
    .registers 3

    .line 248
    iput-object p1, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->this$1:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    iput-object p2, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->mStyle:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;Ljava/lang/String;Lcom/transsion/camera/app/ui/PreviewStyle-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;-><init>(Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;Ljava/lang/String;)V

    return-void
.end method

.method private style()Lcom/transsion/camera/app/ui/PreviewStyle$Style;
    .registers 2

    .line 275
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->this$1:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->-$$Nest$fgetmCurrentStyle(Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;)Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->mStyle:Ljava/lang/String;

    const-string/jumbo v0, "width_full_style"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    .line 276
    sget-object p0, Lcom/transsion/camera/app/ui/PreviewStyle$Style;->WIDTH_FULL:Lcom/transsion/camera/app/ui/PreviewStyle$Style;

    return-object p0

    :cond_14
    sget-object p0, Lcom/transsion/camera/app/ui/PreviewStyle$Style;->HEIGHT_FULL:Lcom/transsion/camera/app/ui/PreviewStyle$Style;

    return-object p0
.end method


# virtual methods
.method changeStyle()V
    .registers 3

    .line 289
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->this$1:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->this$0:Lcom/transsion/camera/app/ui/PreviewStyle;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/PreviewStyle;->-$$Nest$fgetmPreviewStyle(Lcom/transsion/camera/app/ui/PreviewStyle;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->this$1:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    iget-object v1, v1, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->mWidthFullStyle:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;

    iget-object v1, v1, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->mStyle:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1d

    .line 290
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->this$1:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->mHeightFullStyle:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->entry(Z)V

    return-void

    .line 292
    :cond_1d
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->this$1:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->mWidthFullStyle:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->entry(Z)V

    return-void
.end method

.method final entry(Z)V
    .registers 5

    .line 253
    invoke-static {}, Lcom/transsion/camera/app/ui/PreviewStyle;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preview style change from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->this$1:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    iget-object v2, v2, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->this$0:Lcom/transsion/camera/app/ui/PreviewStyle;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/PreviewStyle;->-$$Nest$fgetmPreviewStyle(Lcom/transsion/camera/app/ui/PreviewStyle;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->mStyle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->this$1:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->-$$Nest$fgetmCurrentStyle(Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;)Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;

    move-result-object v0

    if-nez v0, :cond_42

    .line 255
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->this$1:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    invoke-static {v0, p0}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->-$$Nest$fputmCurrentStyle(Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;)V

    .line 256
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->this$1:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->this$0:Lcom/transsion/camera/app/ui/PreviewStyle;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/PreviewStyle;->-$$Nest$fgetmPreviewStyleListener(Lcom/transsion/camera/app/ui/PreviewStyle;)Lcom/transsion/camera/app/ui/PreviewStyle$IPreviewStyleListener;

    .line 259
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->onEntry(Z)V

    return-void

    .line 261
    :cond_42
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->this$1:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->this$0:Lcom/transsion/camera/app/ui/PreviewStyle;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/PreviewStyle;->-$$Nest$fgetmPreviewStyle(Lcom/transsion/camera/app/ui/PreviewStyle;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->mStyle:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_72

    .line 262
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->this$1:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->-$$Nest$fgetmCurrentStyle(Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;)Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;

    move-result-object v0

    if-eqz v0, :cond_63

    .line 263
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->this$1:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->-$$Nest$fgetmCurrentStyle(Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;)Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->onLeave()V

    .line 265
    :cond_63
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->this$1:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    invoke-static {v0, p0}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->-$$Nest$fputmCurrentStyle(Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;)V

    .line 266
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->this$1:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->this$0:Lcom/transsion/camera/app/ui/PreviewStyle;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/PreviewStyle;->-$$Nest$fgetmPreviewStyleListener(Lcom/transsion/camera/app/ui/PreviewStyle;)Lcom/transsion/camera/app/ui/PreviewStyle$IPreviewStyleListener;

    .line 269
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->onEntry(Z)V

    :cond_72
    return-void
.end method

.method protected onEntry(Z)V
    .registers 3

    .line 280
    iget-object p1, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->this$1:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->this$0:Lcom/transsion/camera/app/ui/PreviewStyle;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->mStyle:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/transsion/camera/app/ui/PreviewStyle;->-$$Nest$fputmPreviewStyle(Lcom/transsion/camera/app/ui/PreviewStyle;Ljava/lang/String;)V

    .line 281
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType$BaseStyle;->this$1:Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;->-$$Nest$msaveModeStyle(Lcom/transsion/camera/app/ui/PreviewStyle$BaseModeType;)V

    return-void
.end method

.method protected onLeave()V
    .registers 1

    return-void
.end method

.method abstract sizeChanged()V
.end method
