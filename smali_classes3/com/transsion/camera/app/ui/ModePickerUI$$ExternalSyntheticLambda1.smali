.class public final synthetic Lcom/transsion/camera/app/ui/ModePickerUI$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/ui/ModePickerUI;

.field public final synthetic f$1:Lcom/transsion/camera/app/common/storage/DataStore;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/ui/ModePickerUI;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/ModePickerUI$$ExternalSyntheticLambda1;->f$1:Lcom/transsion/camera/app/common/storage/DataStore;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$$ExternalSyntheticLambda1;->f$1:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {v0, p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->$r8$lambda$DTf8ahXCuBYVZcxVMzKuWSbmUyM(Lcom/transsion/camera/app/ui/ModePickerUI;Lcom/transsion/camera/app/common/storage/DataStore;Landroid/view/View;)V

    return-void
.end method
