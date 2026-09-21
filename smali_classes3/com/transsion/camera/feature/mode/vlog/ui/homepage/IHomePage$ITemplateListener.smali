.class public interface abstract Lcom/transsion/camera/feature/mode/vlog/ui/homepage/IHomePage$ITemplateListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/vlog/ui/homepage/IHomePage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ITemplateListener"
.end annotation


# virtual methods
.method public abstract onTemplateLoadFinished(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/vlog/bean/TemplateCategoryItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onTemplateSelect(Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;)V
.end method
