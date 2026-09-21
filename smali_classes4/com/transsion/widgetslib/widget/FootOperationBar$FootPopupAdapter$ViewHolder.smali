.class Lcom/transsion/widgetslib/widget/FootOperationBar$FootPopupAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/widget/FootOperationBar$FootPopupAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/widgetslib/widget/FootOperationBar$FootPopupAdapter;

.field private title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/transsion/widgetslib/widget/FootOperationBar$FootPopupAdapter;)V
    .registers 2

    .line 1272
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$FootPopupAdapter$ViewHolder;->this$1:Lcom/transsion/widgetslib/widget/FootOperationBar$FootPopupAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/widgetslib/widget/FootOperationBar$FootPopupAdapter;Lcom/transsion/widgetslib/widget/FootOperationBar$1;)V
    .registers 3

    .line 1272
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/FootOperationBar$FootPopupAdapter$ViewHolder;-><init>(Lcom/transsion/widgetslib/widget/FootOperationBar$FootPopupAdapter;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/transsion/widgetslib/widget/FootOperationBar$FootPopupAdapter$ViewHolder;)Landroid/widget/TextView;
    .registers 1

    .line 1272
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$FootPopupAdapter$ViewHolder;->title:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/transsion/widgetslib/widget/FootOperationBar$FootPopupAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 2

    .line 1272
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$FootPopupAdapter$ViewHolder;->title:Landroid/widget/TextView;

    return-object p1
.end method
