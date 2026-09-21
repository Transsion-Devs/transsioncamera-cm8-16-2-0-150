.class public abstract Lcom/transsion/camera/app/common/ui/preference/StateSwitchPreference;
.super Landroid/preference/SwitchPreference;
.source "SourceFile"


# instance fields
.field private mEntryDrawables:[Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 27
    invoke-direct {p0, p1}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public setChecked(Z)V
    .registers 2

    .line 40
    invoke-super {p0, p1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public setEntryDrawables([Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 31
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/preference/StateSwitchPreference;->mEntryDrawables:[Landroid/graphics/drawable/Drawable;

    return-void
.end method
