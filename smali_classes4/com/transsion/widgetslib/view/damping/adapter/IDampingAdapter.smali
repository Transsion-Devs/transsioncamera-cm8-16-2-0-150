.class public interface abstract Lcom/transsion/widgetslib/view/damping/adapter/IDampingAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final VIEW_TYPE_CONTENT:I = 0x92

.field public static final VIEW_TYPE_FOOTER:I = 0x93

.field public static final VIEW_TYPE_HEADER:I = 0x91


# virtual methods
.method public abstract getHeaderCount()I
.end method

.method public getRefreshLayout()Lcom/transsion/widgetslib/view/damping/OSRefreshLayout;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract isHeaderPosition(I)Z
.end method

.method public abstract setRefreshLayout(Lcom/transsion/widgetslib/view/damping/OSRefreshLayout;)V
.end method
