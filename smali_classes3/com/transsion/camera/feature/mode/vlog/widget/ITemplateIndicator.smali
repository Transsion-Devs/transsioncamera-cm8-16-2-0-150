.class public interface abstract Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$IndicatorAdapter;,
        Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$OnItemSelectedListener;,
        Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$DataSetObserver;
    }
.end annotation


# virtual methods
.method public abstract getCurrentItem()I
.end method

.method public abstract getIndicatorAdapter()Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$IndicatorAdapter;
.end method

.method public abstract getItemView(I)Landroid/view/View;
.end method

.method public abstract registerDataSetObserver(Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$IndicatorAdapter;Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$DataSetObserver;)V
.end method

.method public abstract setAdapter(Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$IndicatorAdapter;)V
.end method

.method public abstract setCurrentItem(IZ)V
.end method

.method public abstract setEnable(Z)V
.end method

.method public abstract setOnItemSelectListener(Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$OnItemSelectedListener;)V
.end method

.method public abstract unRegisterDataSetObserver(Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$DataSetObserver;)V
.end method
