.class Lcom/transsion/widgetslib/preference/OSListPreference$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/preference/OSListPreference;->onPrepareDialogBuilder(Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/preference/OSListPreference;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/preference/OSListPreference;)V
    .registers 2

    .line 238
    iput-object p1, p0, Lcom/transsion/widgetslib/preference/OSListPreference$1;->this$0:Lcom/transsion/widgetslib/preference/OSListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 240
    iget-object v0, p0, Lcom/transsion/widgetslib/preference/OSListPreference$1;->this$0:Lcom/transsion/widgetslib/preference/OSListPreference;

    # setter for: Lcom/transsion/widgetslib/preference/OSListPreference;->mClickedDialogEntryIndex:I
    invoke-static {v0, p2}, Lcom/transsion/widgetslib/preference/OSListPreference;->access$002(Lcom/transsion/widgetslib/preference/OSListPreference;I)I

    .line 246
    iget-object p2, p0, Lcom/transsion/widgetslib/preference/OSListPreference$1;->this$0:Lcom/transsion/widgetslib/preference/OSListPreference;

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 247
    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSListPreference$1;->this$0:Lcom/transsion/widgetslib/preference/OSListPreference;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->postDismiss()V

    return-void
.end method
