.class final Lcom/tencent/qrom/preference/MultiSelectListPreference$SavedState$1;
.super Ljava/lang/Object;
.source "MultiSelectListPreference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/preference/MultiSelectListPreference$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/tencent/qrom/preference/MultiSelectListPreference$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tencent/qrom/preference/MultiSelectListPreference$SavedState;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 267
    new-instance v0, Lcom/tencent/qrom/preference/MultiSelectListPreference$SavedState;

    invoke-direct {v0, p1}, Lcom/tencent/qrom/preference/MultiSelectListPreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 265
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/preference/MultiSelectListPreference$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tencent/qrom/preference/MultiSelectListPreference$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/tencent/qrom/preference/MultiSelectListPreference$SavedState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 271
    new-array v0, p1, [Lcom/tencent/qrom/preference/MultiSelectListPreference$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 265
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/preference/MultiSelectListPreference$SavedState$1;->newArray(I)[Lcom/tencent/qrom/preference/MultiSelectListPreference$SavedState;

    move-result-object v0

    return-object v0
.end method