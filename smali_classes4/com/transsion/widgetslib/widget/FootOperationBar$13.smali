.class Lcom/transsion/widgetslib/widget/FootOperationBar$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/FootOperationBar;->setContainerBgColor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

.field final synthetic val$bgBlur:Landroid/graphics/drawable/ShapeDrawable;

.field final synthetic val$newColor:I

.field final synthetic val$paint:Landroid/graphics/Paint;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/widget/FootOperationBar;Landroid/graphics/Paint;ILandroid/graphics/drawable/ShapeDrawable;)V
    .registers 5

    .line 1318
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$13;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    iput-object p2, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$13;->val$paint:Landroid/graphics/Paint;

    iput p3, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$13;->val$newColor:I

    iput-object p4, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$13;->val$bgBlur:Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .line 1321
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$13;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 1322
    # getter for: Lcom/transsion/widgetslib/widget/FootOperationBar;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/transsion/widgetslib/widget/FootOperationBar;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setContainerBgColor, gesture navigation off, fob height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/widgetscore/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$13;->val$paint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/LinearGradient;

    int-to-float v6, v0

    iget v7, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$13;->val$newColor:I

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$13;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    # getter for: Lcom/transsion/widgetslib/widget/FootOperationBar;->mBgColor:I
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->access$2000(Lcom/transsion/widgetslib/widget/FootOperationBar;)I

    move-result v8

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1324
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$13;->this$0:Lcom/transsion/widgetslib/widget/FootOperationBar;

    # getter for: Lcom/transsion/widgetslib/widget/FootOperationBar;->mContainer:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/FootOperationBar;->access$2100(Lcom/transsion/widgetslib/widget/FootOperationBar;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/FootOperationBar$13;->val$bgBlur:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
