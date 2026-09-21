.class public Lcom/transsion/camera/app/ui/ModePickerUI$ActionInterceptImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/widget/TabLayout$ActionIntercept;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/ModePickerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionInterceptImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/ModePickerUI;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/ui/ModePickerUI;)V
    .registers 2

    .line 2000
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ActionInterceptImpl;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptClick()Z
    .registers 1

    .line 2003
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$ActionInterceptImpl;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmIsHALCaptureProcessing(Lcom/transsion/camera/app/ui/ModePickerUI;)Z

    move-result p0

    return p0
.end method
